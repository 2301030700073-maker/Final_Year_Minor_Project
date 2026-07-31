package leakcanary.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.os.MessageQueue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReferenceCleaner implements MessageQueue.IdleHandler, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalFocusChangeListener {
    public final Method finishInputLockedMethod;
    public final InputMethodManager inputMethodManager;
    public final Field mHField;
    public final Field mServedViewField;

    public ReferenceCleaner(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
        this.inputMethodManager = inputMethodManager;
        this.mHField = field;
        this.mServedViewField = field2;
        this.finishInputLockedMethod = method;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (view2 == null) {
            return;
        }
        if (view != null) {
            view.removeOnAttachStateChangeListener(this);
        }
        Looper.myQueue().removeIdleHandler(this);
        view2.addOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.getClass();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        view.getClass();
        view.removeOnAttachStateChangeListener(this);
        Looper.myQueue().removeIdleHandler(this);
        Looper.myQueue().addIdleHandler(this);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        Activity activity;
        Context baseContext;
        try {
            Object obj = this.mHField.get(this.inputMethodManager);
            if (obj == null) {
                return false;
            }
            synchronized (obj) {
                try {
                    View view = (View) this.mServedViewField.get(this.inputMethodManager);
                    if (view != null) {
                        if (view.getWindowVisibility() != 8) {
                            view.removeOnAttachStateChangeListener(this);
                            view.addOnAttachStateChangeListener(this);
                        } else {
                            Context context = view.getContext();
                            context.getClass();
                            while (!(context instanceof Application)) {
                                if (!(context instanceof Activity)) {
                                    if (!(context instanceof ContextWrapper) || (baseContext = ((ContextWrapper) context).getBaseContext()) == context) {
                                        break;
                                    }
                                    baseContext.getClass();
                                    context = baseContext;
                                } else {
                                    activity = (Activity) context;
                                    break;
                                }
                            }
                            activity = null;
                            if (activity != null && activity.getWindow() != null) {
                                View peekDecorView = activity.getWindow().peekDecorView();
                                peekDecorView.getClass();
                                if (peekDecorView.getWindowVisibility() == 8) {
                                    this.finishInputLockedMethod.invoke(this.inputMethodManager, null);
                                }
                            }
                            this.finishInputLockedMethod.invoke(this.inputMethodManager, null);
                        }
                    }
                } finally {
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
