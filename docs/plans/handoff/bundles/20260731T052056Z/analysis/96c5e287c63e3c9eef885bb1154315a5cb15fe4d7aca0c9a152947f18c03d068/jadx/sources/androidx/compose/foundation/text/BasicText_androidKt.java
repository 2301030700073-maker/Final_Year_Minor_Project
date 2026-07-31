package androidx.compose.foundation.text;

import android.os.Build;
import android.os.Trace;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.collections.EmptyList;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BasicText_androidKt {
    public static final StaticProvidableCompositionLocal LocalBackgroundTextMeasurementExecutor = new StaticProvidableCompositionLocal(0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(14));
    public static Boolean backingCoreCountSatisfactory;

    public static final void BackgroundTextMeasurement(final AnnotatedString annotatedString, final TextStyle textStyle, final FontFamily.Resolver resolver, final List list, GapComposer gapComposer) {
        Executor executor = (Executor) gapComposer.consume(LocalBackgroundTextMeasurementExecutor);
        if (executor == null || !shouldPrefetch(annotatedString.text.length())) {
            gapComposer.startReplaceGroup(-517090505);
            gapComposer.end(false);
            return;
        }
        gapComposer.startReplaceGroup(-518737659);
        final LayoutDirection layoutDirection = (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection);
        final Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        try {
            executor.execute(new Runnable() { // from class: androidx.compose.foundation.text.BasicText_androidKt$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MutableSnapshot takeNestedMutableSnapshot;
                    TextStyle textStyle2 = TextStyle.this;
                    LayoutDirection layoutDirection2 = layoutDirection;
                    AnnotatedString annotatedString2 = annotatedString;
                    Density density2 = density;
                    FontFamily.Resolver resolver2 = resolver;
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
                                TextStyle resolveDefaults = ParagraphKt.resolveDefaults(textStyle2, layoutDirection2);
                                List list2 = list;
                                if (list2 == null) {
                                    list2 = EmptyList.INSTANCE;
                                }
                                Request.Builder builder = new Request.Builder(annotatedString2, resolveDefaults, list2, density2, resolver2);
                                builder.getMaxIntrinsicWidth();
                                builder.getMinIntrinsicWidth();
                                Snapshot.restoreCurrent(makeCurrent);
                                takeNestedMutableSnapshot.apply().check();
                                takeNestedMutableSnapshot.dispose();
                                Trace.endSection();
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
                }
            });
        } catch (RejectedExecutionException unused) {
        }
        gapComposer.end(false);
    }

    public static final boolean shouldPrefetch(int i) {
        if (Build.VERSION.SDK_INT >= 28 && i >= 8 && i < 1000) {
            Boolean bool = backingCoreCountSatisfactory;
            if (bool == null) {
                bool = Boolean.valueOf(Runtime.getRuntime().availableProcessors() >= 4);
                backingCoreCountSatisfactory = bool;
            }
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
