package com.android.systemui.shared.system;

import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.IWindowManager;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.WindowManagerGlobal;
import c.a.c.a.a;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class InputConsumerController {
    public static final String TAG = "InputConsumerController";
    public InputEventReceiver mInputEventReceiver;
    public InputListener mListener;
    public final String mName;
    public RegistrationListener mRegistrationListener;
    public final IBinder mToken = new Binder();
    public final IWindowManager mWindowManager;

    public final class InputEventReceiver extends BatchedInputEventReceiver {
        public InputEventReceiver(InputChannel inputChannel, Looper looper, Choreographer choreographer) {
            super(inputChannel, looper, choreographer);
        }

        public void onInputEvent(InputEvent inputEvent) {
            try {
                boolean onInputEvent = InputConsumerController.this.mListener != null ? InputConsumerController.this.mListener.onInputEvent(inputEvent) : true;
            } finally {
                finishInputEvent(inputEvent, true);
            }
        }
    }

    public interface InputListener {
        boolean onInputEvent(InputEvent inputEvent);
    }

    public interface RegistrationListener {
        void onRegistrationChanged(boolean z);
    }

    public InputConsumerController(IWindowManager iWindowManager, String str) {
        this.mWindowManager = iWindowManager;
        this.mName = str;
    }

    public static InputConsumerController getPipInputConsumer() {
        return new InputConsumerController(WindowManagerGlobal.getWindowManagerService(), "pip_input_consumer");
    }

    public static InputConsumerController getRecentsAnimationInputConsumer() {
        return new InputConsumerController(WindowManagerGlobal.getWindowManagerService(), "recents_animation_input_consumer");
    }

    public void dump(PrintWriter printWriter, String str) {
        String e = a.e(str, "  ");
        StringBuilder f = a.f(str);
        f.append(TAG);
        printWriter.println(f.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(e);
        sb.append("registered=");
        sb.append(this.mInputEventReceiver != null);
        printWriter.println(sb.toString());
    }

    public boolean isRegistered() {
        return this.mInputEventReceiver != null;
    }

    public void registerInputConsumer() {
        registerInputConsumer(false);
    }

    public void setInputListener(InputListener inputListener) {
        this.mListener = inputListener;
    }

    public void setRegistrationListener(RegistrationListener registrationListener) {
        this.mRegistrationListener = registrationListener;
        if (registrationListener != null) {
            registrationListener.onRegistrationChanged(this.mInputEventReceiver != null);
        }
    }

    public void unregisterInputConsumer() {
        if (this.mInputEventReceiver != null) {
            try {
                this.mWindowManager.destroyInputConsumer(this.mName, 0);
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to destroy input consumer", e);
            }
            this.mInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
            RegistrationListener registrationListener = this.mRegistrationListener;
            if (registrationListener != null) {
                registrationListener.onRegistrationChanged(false);
            }
        }
    }

    public void registerInputConsumer(boolean z) {
        if (this.mInputEventReceiver == null) {
            InputChannel inputChannel = new InputChannel();
            try {
                this.mWindowManager.destroyInputConsumer(this.mName, 0);
                this.mWindowManager.createInputConsumer(this.mToken, this.mName, 0, inputChannel);
            } catch (RemoteException e) {
                Log.e(TAG, "Failed to create input consumer", e);
            }
            this.mInputEventReceiver = new InputEventReceiver(inputChannel, Looper.myLooper(), z ? Choreographer.getSfInstance() : Choreographer.getInstance());
            RegistrationListener registrationListener = this.mRegistrationListener;
            if (registrationListener != null) {
                registrationListener.onRegistrationChanged(true);
            }
        }
    }
}
