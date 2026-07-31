package androidx.core.provider;

import androidx.core.content.res.CamUtils;
import androidx.emoji2.text.EmojiCompat;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import androidx.work.Operation$State;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.navigation.NavigationBarItemView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallbackWrapper$2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final Object val$callback;
    public final int val$reason;

    public CallbackWrapper$2(List list, int i, Throwable th) {
        this.$r8$classId = 1;
        Operation$State.checkNotNull("initCallbacks cannot be null", list);
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
                CamUtils camUtils = (CamUtils) ((HintHandler) obj).state;
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
            case 3:
                ((MaterialCalendar) obj).recyclerView.smoothScrollToPosition(i2);
                break;
            default:
                ((NavigationBarItemView) obj).updateActiveIndicatorLayoutParams(i2);
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
