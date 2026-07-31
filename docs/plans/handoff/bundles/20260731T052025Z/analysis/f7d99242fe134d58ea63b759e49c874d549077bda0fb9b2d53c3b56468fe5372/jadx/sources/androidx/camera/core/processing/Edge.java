package androidx.camera.core.processing;

import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.provider.FontRequestWorker;
import androidx.core.util.Consumer;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Edge implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public Object mListener;

    public /* synthetic */ Edge(int i, Object obj) {
        this.$r8$classId = i;
        this.mListener = obj;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((Consumer) this.mListener).getClass();
                ((Consumer) this.mListener).accept(obj);
                return;
            case 1:
                FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) obj;
                if (typefaceResult == null) {
                    typefaceResult = new FontRequestWorker.TypefaceResult(-3);
                }
                ((WeakCache) this.mListener).onTypefaceResult(typefaceResult);
                return;
            default:
                FontRequestWorker.TypefaceResult typefaceResult2 = (FontRequestWorker.TypefaceResult) obj;
                synchronized (FontRequestWorker.LOCK) {
                    try {
                        SimpleArrayMap simpleArrayMap = FontRequestWorker.PENDING_REPLIES;
                        ArrayList arrayList = (ArrayList) simpleArrayMap.get((String) this.mListener);
                        if (arrayList == null) {
                            return;
                        }
                        simpleArrayMap.remove((String) this.mListener);
                        for (int i = 0; i < arrayList.size(); i++) {
                            ((Consumer) arrayList.get(i)).accept(typefaceResult2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }

    public /* synthetic */ Edge() {
        this.$r8$classId = 0;
    }
}
