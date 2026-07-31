package androidx.compose.foundation.text;

import android.os.Trace;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.fsck.k9.mailstore.LocalStore;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicText_androidKt$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ BasicText_androidKt$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MutableSnapshot takeNestedMutableSnapshot;
        int i = this.$r8$classId;
        Object obj = this.f$5;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                TextStyle textStyle = (TextStyle) obj6;
                LayoutDirection layoutDirection = (LayoutDirection) obj5;
                List list = (List) obj4;
                AnnotatedString annotatedString = (AnnotatedString) obj3;
                Density density = (Density) obj2;
                FontFamily$Resolver fontFamily$Resolver = (FontFamily$Resolver) obj;
                Trace.beginSection("BackgroundTextMeasurement");
                try {
                    Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
                    MutableSnapshot mutableSnapshot = currentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) currentSnapshot : null;
                    if (mutableSnapshot == null || (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(null, null)) == null) {
                        throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
                    }
                    try {
                        Snapshot makeCurrent = takeNestedMutableSnapshot.makeCurrent();
                        try {
                            TextStyle resolveDefaults = ParagraphKt.resolveDefaults(textStyle, layoutDirection);
                            if (list == null) {
                                list = EmptyList.INSTANCE;
                            }
                            LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(annotatedString, resolveDefaults, list, density, fontFamily$Resolver);
                            anonymousClass7.getMaxIntrinsicWidth();
                            anonymousClass7.getMinIntrinsicWidth();
                            Snapshot.restoreCurrent(makeCurrent);
                            takeNestedMutableSnapshot.apply().check();
                            takeNestedMutableSnapshot.dispose();
                            Trace.endSection();
                            return;
                        } catch (Throwable th) {
                            Snapshot.restoreCurrent(makeCurrent);
                            throw th;
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            default:
                ((LocalStore.AnonymousClass7) obj6).createAndSendSurfaceOutput((CameraInternal) obj5, (CameraInternal) obj4, (SurfaceEdge) obj3, (SurfaceEdge) obj2, (Map.Entry) obj);
                return;
        }
    }
}
