package androidx.work;

import android.content.res.Resources;
import android.os.Trace;
import android.view.View;
import android.view.Window;
import androidx.activity.EdgeToEdgeBase;
import androidx.activity.SystemBarStyle;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import androidx.room.Room;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.newpipe.app.ComposeActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class OperationKt$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ OperationKt$$ExternalSyntheticLambda1(TextStyle textStyle, LayoutDirection layoutDirection, String str, Density density, FontFamily$Resolver fontFamily$Resolver) {
        this.$r8$classId = 2;
        this.f$0 = textStyle;
        this.f$2 = layoutDirection;
        this.f$1 = str;
        this.f$3 = density;
        this.f$4 = fontFamily$Resolver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MutableSnapshot takeNestedMutableSnapshot;
        int i = this.$r8$classId;
        Object obj = this.f$4;
        Object obj2 = this.f$3;
        Object obj3 = this.f$1;
        Object obj4 = this.f$2;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj3;
                Function0 function0 = (Function0) obj4;
                MutableLiveData mutableLiveData = (MutableLiveData) obj2;
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) obj;
                ((SystemClock) obj5).getClass();
                boolean isEnabled = Room.isEnabled();
                if (isEnabled) {
                    try {
                        Trace.beginSection(Room.truncatedTraceSectionLabel(str));
                    } finally {
                        if (isEnabled) {
                            Trace.endSection();
                        }
                    }
                }
                try {
                    function0.invoke();
                    Operation$State$SUCCESS operation$State$SUCCESS = SystemClock.SUCCESS;
                    mutableLiveData.postValue(operation$State$SUCCESS);
                    callbackToFutureAdapter$Completer.set(operation$State$SUCCESS);
                } catch (Throwable th) {
                    mutableLiveData.postValue(new BundleKt(th) { // from class: androidx.work.Operation$State$FAILURE
                        public final Throwable mThrowable;

                        {
                            this.mThrowable = th;
                        }

                        public final String toString() {
                            return "FAILURE (" + this.mThrowable.getMessage() + ")";
                        }
                    });
                    callbackToFutureAdapter$Completer.setException(th);
                }
                if (isEnabled) {
                    return;
                } else {
                    return;
                }
            case 1:
                EdgeToEdgeBase edgeToEdgeBase = (EdgeToEdgeBase) obj5;
                SystemBarStyle systemBarStyle = (SystemBarStyle) obj3;
                SystemBarStyle systemBarStyle2 = (SystemBarStyle) obj4;
                View view = (View) obj;
                Window window = ((ComposeActivity) obj2).getWindow();
                window.getClass();
                Function1 function1 = systemBarStyle.detectDarkMode;
                Resources resources = view.getResources();
                resources.getClass();
                boolean booleanValue = ((Boolean) function1.invoke(resources)).booleanValue();
                Function1 function12 = systemBarStyle2.detectDarkMode;
                Resources resources2 = view.getResources();
                resources2.getClass();
                edgeToEdgeBase.setUp(systemBarStyle, systemBarStyle2, window, view, booleanValue, ((Boolean) function12.invoke(resources2)).booleanValue());
                return;
            default:
                TextStyle textStyle = (TextStyle) obj5;
                LayoutDirection layoutDirection = (LayoutDirection) obj4;
                String str2 = (String) obj3;
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
                            EmptyList emptyList = EmptyList.INSTANCE;
                            AndroidParagraphIntrinsics androidParagraphIntrinsics = new AndroidParagraphIntrinsics(str2, resolveDefaults, emptyList, emptyList, fontFamily$Resolver, density);
                            androidParagraphIntrinsics.getMaxIntrinsicWidth();
                            androidParagraphIntrinsics.getMinIntrinsicWidth();
                            Snapshot.restoreCurrent(makeCurrent);
                            takeNestedMutableSnapshot.apply().check();
                            takeNestedMutableSnapshot.dispose();
                            Trace.endSection();
                            return;
                        } catch (Throwable th2) {
                            Snapshot.restoreCurrent(makeCurrent);
                            throw th2;
                        }
                    } finally {
                    }
                } catch (Throwable th3) {
                    Trace.endSection();
                    throw th3;
                }
        }
    }

    public /* synthetic */ OperationKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }
}
