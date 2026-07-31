package org.wikipedia.games.onthisday;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import j$.time.LocalDate;
import kotlin.Metadata;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomActivity$onSaveClick$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class OnThisDayGameBaseFragment extends Fragment {
    public OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper;

    public abstract void onArchiveDateSelected(LocalDate localDate);

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = this.onThisDayGameArchiveCalendarHelper;
        if (onThisDayGameArchiveCalendarHelper != null) {
            onThisDayGameArchiveCalendarHelper.fragment.getChildFragmentManager().unregisterFragmentLifecycleCallbacks(onThisDayGameArchiveCalendarHelper.fragmentLifecycleCallbacks);
        }
        this.onThisDayGameArchiveCalendarHelper = null;
        this.mCalled = true;
    }

    public final void prepareAndOpenArchiveCalendar(String str) {
        str.getClass();
        OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = this.onThisDayGameArchiveCalendarHelper;
        if (onThisDayGameArchiveCalendarHelper != null) {
            onThisDayGameArchiveCalendarHelper.fragment.getChildFragmentManager().unregisterFragmentLifecycleCallbacks(onThisDayGameArchiveCalendarHelper.fragmentLifecycleCallbacks);
        }
        OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper2 = new OnThisDayGameArchiveCalendarHelper(this, str, new MainActivity$$ExternalSyntheticLambda1(13, this));
        getChildFragmentManager().registerFragmentLifecycleCallbacks(onThisDayGameArchiveCalendarHelper2.fragmentLifecycleCallbacks, true);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new RandomActivity$onSaveClick$1(onThisDayGameArchiveCalendarHelper2, null), 3);
        this.onThisDayGameArchiveCalendarHelper = onThisDayGameArchiveCalendarHelper2;
    }
}
