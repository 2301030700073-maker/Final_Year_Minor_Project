package androidx.work.impl;

import android.os.Build;
import android.os.Trace;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.recyclerview.widget.RecyclerView;
import androidx.tracing.TraceApi29Impl;
import androidx.work.ListenableWorker;
import com.caverock.androidsvg.SVG;
import java.lang.reflect.Method;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerWrapper$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ WorkerWrapper$$ExternalSyntheticLambda1(Object obj, boolean z, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
        this.f$2 = obj2;
        this.f$3 = obj3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        boolean z = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ListenableWorker listenableWorker = (ListenableWorker) obj4;
                String str = (String) obj3;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj2;
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    listenableWorker.mStopReason.compareAndSet(-256, ((WorkerStoppedException) th).reason);
                }
                if (z && str != null) {
                    int hashCode = workerWrapper.workSpec.hashCode();
                    if (Build.VERSION.SDK_INT >= 29) {
                        TraceApi29Impl.endAsyncSection(TuplesKt.truncatedTraceSectionLabel(str), hashCode);
                    } else {
                        String truncatedTraceSectionLabel = TuplesKt.truncatedTraceSectionLabel(str);
                        try {
                            Method method = TuplesKt.sAsyncTraceEndMethod;
                            if (method == null) {
                                method = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                                TuplesKt.sAsyncTraceEndMethod = method;
                            }
                            method.invoke(null, Long.valueOf(TuplesKt.sTraceTagApp), truncatedTraceSectionLabel, Integer.valueOf(hashCode));
                        } catch (Exception e) {
                            TuplesKt.handleException("asyncTraceEnd", e);
                        }
                    }
                }
                return unit;
            default:
                AndroidImageBitmap androidImageBitmap = (AndroidImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                if (((Boolean) ((Function0) obj4).invoke()).booleanValue()) {
                    if (z) {
                        long mo475getCenterF1C5BW0 = canvasDrawScope.mo475getCenterF1C5BW0();
                        SVG svg = canvasDrawScope.drawContext;
                        long m796getSizeNHjbRc = svg.m796getSizeNHjbRc();
                        svg.getCanvas().save();
                        try {
                            ((PopupMenu$1) svg.rootElement).m7scale0AR0LA0(-1.0f, 1.0f, mo475getCenterF1C5BW0);
                            Modifier.CC.m345drawImagegbVJVH8$default(layoutNodeDrawScope, androidImageBitmap, 0L, RecyclerView.DECELERATION_RATE, blendModeColorFilter, 46);
                        } finally {
                            Animation.CC.m(svg, m796getSizeNHjbRc);
                        }
                    } else {
                        Modifier.CC.m345drawImagegbVJVH8$default(layoutNodeDrawScope, androidImageBitmap, 0L, RecyclerView.DECELERATION_RATE, blendModeColorFilter, 46);
                    }
                }
                return unit;
        }
    }
}
