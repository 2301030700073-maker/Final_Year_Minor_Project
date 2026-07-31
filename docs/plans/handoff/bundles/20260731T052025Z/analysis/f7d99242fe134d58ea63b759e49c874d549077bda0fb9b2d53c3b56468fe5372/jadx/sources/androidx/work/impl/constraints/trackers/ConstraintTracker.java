package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import androidx.camera.core.impl.utils.executor.IoExecutor;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.takisoft.datetimepicker.widget.TimePicker;
import com.takisoft.datetimepicker.widget.TimePicker$AbstractTimePickerDelegate$SavedState;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ConstraintTracker {
    public final Context appContext;
    public Object currentState;
    public Object listeners;
    public final Object lock;
    public final Object taskExecutor;

    public ConstraintTracker(Context context, Dispatcher dispatcher) {
        this.taskExecutor = dispatcher;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.appContext = applicationContext;
        this.lock = new Object();
        this.listeners = new LinkedHashSet();
    }

    public abstract View getAmView();

    public abstract int getBaseline();

    public abstract int getHour();

    public abstract View getHourView();

    public abstract int getMinute();

    public abstract View getMinuteView();

    public abstract View getPmView();

    public abstract boolean is24Hour();

    public abstract boolean isEnabled();

    public abstract void onRestoreInstanceState(View.BaseSavedState baseSavedState);

    public abstract TimePicker$AbstractTimePickerDelegate$SavedState onSaveInstanceState(Parcelable parcelable);

    public abstract Object readSystemState();

    public abstract void setEnabled(boolean z);

    public abstract void setHour(int i);

    public abstract void setIs24Hour(boolean z);

    public abstract void setMinute(int i);

    public void setState(Object obj) {
        synchronized (this.lock) {
            Object obj2 = this.currentState;
            if (obj2 == null || !obj2.equals(obj)) {
                this.currentState = obj;
                ((IoExecutor) ((Dispatcher) this.taskExecutor).runningSyncCalls).execute(new Processor$$ExternalSyntheticLambda2(6, CollectionsKt.toList((LinkedHashSet) this.listeners), this));
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();

    public abstract boolean validateInput();

    public ConstraintTracker(TimePicker timePicker, Context context) {
        this.taskExecutor = timePicker;
        this.appContext = context;
        this.lock = context.getResources().getConfiguration().locale;
    }
}
