package com.example.chat_ui_sample_example

import android.content.Context
import com.azure.android.communication.common.CommunicationTokenCredential
import com.azure.android.communication.ui.chat.ChatAdapter
import com.azure.android.communication.ui.chat.ChatAdapterBuilder
import com.example.chat_ui_sample.Pigeon
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        Pigeon.AzureCommunicationUIHostApi.setup(flutterEngine.dartExecutor.binaryMessenger, AzureChatApi())
    }


    private inner class AzureChatApi: Pigeon.AzureCommunicationUIHostApi {
        override fun startChatComposite(options: Pigeon.Input) {


            val communicationTokenCredential =
                CommunicationTokenCredential(options.acsToken)

            val chatAdapter = ChatAdapterBuilder()
                .endpointUrl(options.endpointUrl)
                .communicationTokenCredential(communicationTokenCredential)
                .identity(options.identity)
                .displayName(options.displayName)
                .build()

            // Connect to ACS service, starts realtime notifications
            chatAdapter.connect(context, options.threadId).get()


            val activityLauncherClass =
                Class.forName("com.azure.android.communication.ui.chat.presentation.ChatCompositeActivity")
            val constructor = activityLauncherClass.getDeclaredConstructor(Context::class.java)
            constructor.isAccessible = true
            val instance = constructor.newInstance(activity)
            val launchMethod =
                activityLauncherClass.getDeclaredMethod("launch", ChatAdapter::class.java)
            launchMethod.isAccessible = true
            launchMethod.invoke(instance, chatAdapter)
        }
    }

}
