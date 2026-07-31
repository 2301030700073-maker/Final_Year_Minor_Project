package androidx.core.provider;

import androidx.core.content.res.CamUtils;
import androidx.emoji2.text.EmojiCompat;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;
import java.util.List;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CallbackWrapper$2 implements Runnable {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object val$callback;
    public final int val$reason;

    public CallbackWrapper$2(List list, int i, Throwable th) {
        RangesKt.checkNotNull(list, "initCallbacks cannot be null");
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
                CamUtils camUtils = (CamUtils) ((MemoryCacheService) obj).imageLoader;
                if (camUtils != null) {
                    camUtils.onFontRetrievalFailed(i2);
                    break;
                }
                break;
            default:
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
        }
    }

    public CallbackWrapper$2(MemoryCacheService memoryCacheService, int i) {
        this.val$callback = memoryCacheService;
        this.val$reason = i;
    }
}
