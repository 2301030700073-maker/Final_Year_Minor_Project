package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.lang.reflect.Field;
import kotlin.SynchronizedLazyImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImmLeaksCleaner implements LifecycleEventObserver {
    public static final SynchronizedLazyImpl cleaner$delegate = new SynchronizedLazyImpl(new ImmLeaksCleaner$$ExternalSyntheticLambda0(0));
    public final ComponentActivity activity;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Cleaner {
        public abstract boolean clearNextServedView(InputMethodManager inputMethodManager);

        public abstract Object getLock(InputMethodManager inputMethodManager);

        public abstract View getServedView(InputMethodManager inputMethodManager);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FailedInitialization extends Cleaner {
        public static final FailedInitialization INSTANCE = new FailedInitialization();

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final boolean clearNextServedView(InputMethodManager inputMethodManager) {
            return false;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final Object getLock(InputMethodManager inputMethodManager) {
            return null;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final View getServedView(InputMethodManager inputMethodManager) {
            return null;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ValidCleaner extends Cleaner {
        public final Field hField;
        public final Field nextServedViewField;
        public final Field servedViewField;

        public ValidCleaner(Field field, Field field2, Field field3) {
            this.hField = field;
            this.servedViewField = field2;
            this.nextServedViewField = field3;
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final boolean clearNextServedView(InputMethodManager inputMethodManager) {
            try {
                this.nextServedViewField.set(inputMethodManager, null);
                return true;
            } catch (IllegalAccessException unused) {
                return false;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final Object getLock(InputMethodManager inputMethodManager) {
            try {
                return this.hField.get(inputMethodManager);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // androidx.activity.ImmLeaksCleaner.Cleaner
        public final View getServedView(InputMethodManager inputMethodManager) {
            try {
                return (View) this.servedViewField.get(inputMethodManager);
            } catch (ClassCastException | IllegalAccessException unused) {
                return null;
            }
        }
    }

    public ImmLeaksCleaner(ComponentActivity componentActivity) {
        this.activity = componentActivity;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        Object systemService = this.activity.getSystemService("input_method");
        systemService.getClass();
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        Cleaner cleaner = (Cleaner) cleaner$delegate.getValue();
        Object lock = cleaner.getLock(inputMethodManager);
        if (lock == null) {
            return;
        }
        synchronized (lock) {
            View servedView = cleaner.getServedView(inputMethodManager);
            if (servedView == null) {
                return;
            }
            if (servedView.isAttachedToWindow()) {
                return;
            }
            boolean clearNextServedView = cleaner.clearNextServedView(inputMethodManager);
            if (clearNextServedView) {
                inputMethodManager.isActive();
            }
        }
    }
}
