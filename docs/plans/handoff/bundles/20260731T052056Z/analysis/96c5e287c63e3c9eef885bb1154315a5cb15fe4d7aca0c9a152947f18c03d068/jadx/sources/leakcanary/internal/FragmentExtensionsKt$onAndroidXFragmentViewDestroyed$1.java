package leakcanary.internal;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.work.OperationKt;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.datepicker.MaterialDatePicker;
import java.lang.reflect.Field;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1 extends OperationKt {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$block = obj;
    }

    @Override // androidx.work.OperationKt
    public void onFragmentStarted(FragmentManagerImpl fragmentManagerImpl, Fragment fragment) {
        Object obj;
        switch (this.$r8$classId) {
            case 1:
                OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = (OnThisDayGameArchiveCalendarHelper) this.$block;
                if (fragment instanceof MaterialDatePicker) {
                    MaterialDatePicker materialDatePicker = (MaterialDatePicker) fragment;
                    try {
                        Field declaredField = materialDatePicker.getClass().getDeclaredField("calendar");
                        declaredField.setAccessible(true);
                        obj = declaredField.get(materialDatePicker);
                    } catch (Exception e) {
                        L.e(e);
                        obj = null;
                    }
                    MaterialCalendar materialCalendar = (MaterialCalendar) obj;
                    if (materialCalendar != null) {
                        materialCalendar.addOnSelectionChangedListener(new MaterialDatePicker.AnonymousClass2(2, onThisDayGameArchiveCalendarHelper));
                        break;
                    }
                }
                break;
        }
    }

    @Override // androidx.work.OperationKt
    public void onFragmentViewDestroyed(FragmentManagerImpl fragmentManagerImpl, Fragment fragment) {
        switch (this.$r8$classId) {
            case 0:
                ((AndroidLeakFixes$Companion$onDecorViewReady$1) this.$block).invoke();
                break;
        }
    }
}
