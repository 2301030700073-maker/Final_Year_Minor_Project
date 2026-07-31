package androidx.core.provider;

import androidx.core.content.res.CamUtils;
import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.RelationUtil;
import androidx.viewpager2.widget.ViewPager2;
import com.takisoft.datetimepicker.widget.YearPickerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CallbackWrapper$2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final Object val$callback;
    public final int val$reason;

    public CallbackWrapper$2(List list, int i, Throwable th) {
        this.$r8$classId = 1;
        RelationUtil.checkNotNull(list, "initCallbacks cannot be null");
        this.val$callback = new ArrayList(list);
        this.val$reason = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = this.val$reason;
        Object obj = this.val$callback;
        switch (i) {
            case 0:
                CamUtils camUtils = (CamUtils) ((Fragment.AnonymousClass7) obj).this$0;
                if (camUtils != null) {
                    camUtils.onFontRetrievalFailed(i2);
                    break;
                }
                break;
            case 1:
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                int i3 = 0;
                if (i2 == 1) {
                    while (i3 < size) {
                        ((EmojiCompat.InitCallback) arrayList.get(i3)).onInitialized();
                        i3++;
                    }
                    break;
                } else {
                    while (i3 < size) {
                        ((EmojiCompat.InitCallback) arrayList.get(i3)).onFailed();
                        i3++;
                    }
                    break;
                }
            case 2:
                ((RecyclerView) obj).smoothScrollToPosition(i2);
                break;
            default:
                YearPickerView yearPickerView = (YearPickerView) obj;
                int i4 = i2 - yearPickerView.mAdapter.mMinYear;
                if (i4 >= 0 && i4 < yearPickerView.getCount()) {
                    yearPickerView.setSelectionFromTop(i4, (yearPickerView.mViewSize / 2) - (yearPickerView.mChildSize / 2));
                    break;
                }
                break;
        }
    }

    public CallbackWrapper$2(int i, ViewPager2.RecyclerViewImpl recyclerViewImpl) {
        this.$r8$classId = 2;
        this.val$reason = i;
        this.val$callback = recyclerViewImpl;
    }

    public /* synthetic */ CallbackWrapper$2(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.val$callback = obj;
        this.val$reason = i;
    }
}
