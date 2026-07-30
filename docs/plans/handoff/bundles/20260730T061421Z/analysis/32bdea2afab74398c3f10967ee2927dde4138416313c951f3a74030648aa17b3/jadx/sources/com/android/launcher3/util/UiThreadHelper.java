package com.android.launcher3.util;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.UiThreadHelper;

/* loaded from: classes.dex */
public class UiThreadHelper {
    public static final MainThreadInitializedObject HANDLER = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.a1.t
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return UiThreadHelper.a(context);
        }
    });

    public interface AsyncCommand {
        void execute(Context context, int i, int i2);
    }

    public class UiCallbacks implements Handler.Callback {
        public final Context mContext;
        public final InputMethodManager mIMM;

        public UiCallbacks(Context context) {
            this.mContext = context;
            this.mIMM = (InputMethodManager) context.getSystemService("input_method");
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                this.mIMM.hideSoftInputFromWindow((IBinder) message.obj, 0);
                return true;
            }
            if (i == 2) {
                ((Activity) message.obj).setRequestedOrientation(message.arg1);
                return true;
            }
            if (i != 3) {
                return false;
            }
            ((AsyncCommand) message.obj).execute(this.mContext, message.arg1, message.arg2);
            return true;
        }
    }

    public static /* synthetic */ Handler a(Context context) {
        return new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), new UiCallbacks(context));
    }

    public static void setBackButtonAlphaAsync(Context context, AsyncCommand asyncCommand, float f, boolean z) {
        Message.obtain((Handler) HANDLER.b(context), 3, Float.floatToIntBits(f), z ? 1 : 0, asyncCommand).sendToTarget();
    }
}
