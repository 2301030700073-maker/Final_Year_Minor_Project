package androidx.fragment.app;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback$OnBackPressedEventHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.util.GeoUtil$$ExternalSyntheticApiModelOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentManager$1 {
    public final /* synthetic */ int $r8$classId;
    public final CopyOnWriteArrayList closeables;
    public final ArrayList eventHandlers;
    public boolean isEnabled;
    public final /* synthetic */ Object this$0;

    public FragmentManager$1(boolean z) {
        this.eventHandlers = new ArrayList();
        this.isEnabled = z;
        this.closeables = new CopyOnWriteArrayList();
    }

    public final void remove() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.closeables;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            AutoCloseable autoCloseable = (AutoCloseable) it.next();
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                GeoUtil$$ExternalSyntheticApiModelOutline0.m((ExecutorService) autoCloseable);
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
            } else if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof ContentProviderClient)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    return;
                }
                ((ContentProviderClient) autoCloseable).release();
            }
        }
        copyOnWriteArrayList.clear();
        ArrayList arrayList = this.eventHandlers;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((OnBackPressedCallback$OnBackPressedEventHandler) it2.next()).remove();
        }
        arrayList.clear();
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
        Iterator it = this.eventHandlers.iterator();
        while (it.hasNext()) {
            OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler = (OnBackPressedCallback$OnBackPressedEventHandler) it.next();
            onBackPressedCallback$OnBackPressedEventHandler.setBackEnabled(onBackPressedCallback$OnBackPressedEventHandler.isLifecycleActive && z);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FragmentManager$1(Object obj, boolean z, int i) {
        this(false);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FragmentManager$1(int i, Object obj) {
        this(true);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    public final void handleOnBackCancelled$androidx$activity$OnBackPressedCallback() {
    }

    public final void handleOnBackProgressed$androidx$activity$OnBackPressedCallback(BackEventCompat backEventCompat) {
    }

    public final void handleOnBackStarted$androidx$activity$OnBackPressedCallback(BackEventCompat backEventCompat) {
    }
}
