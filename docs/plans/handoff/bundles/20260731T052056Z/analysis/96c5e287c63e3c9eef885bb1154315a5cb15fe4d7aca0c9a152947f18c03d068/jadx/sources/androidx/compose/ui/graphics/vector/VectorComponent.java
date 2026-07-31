package androidx.compose.ui.graphics.vector;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import com.caverock.androidsvg.SVG;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorComponent extends VNode {
    public final DrawCache cacheDrawScope;
    public final AnonymousClass1 drawVectorBlock;
    public final ParcelableSnapshotMutableState intrinsicColorFilter$delegate;
    public Function0 invalidateCallback;
    public boolean isDirty;
    public String name;
    public long previousDrawSize;
    public final GroupComponent root;
    public float rootScaleX;
    public float rootScaleY;
    public BlendModeColorFilter tintFilter;
    public final ParcelableSnapshotMutableState viewportSize$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.ui.graphics.vector.VectorComponent$1, reason: invalid class name */
    public final class AnonymousClass1 extends Lambda implements Function1 {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ VectorComponent this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(VectorComponent vectorComponent, int i) {
            super(1);
            this.$r8$classId = i;
            this.this$0 = vectorComponent;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            VectorComponent vectorComponent = this.this$0;
            switch (i) {
                case 0:
                    vectorComponent.isDirty = true;
                    vectorComponent.invalidateCallback.invoke();
                    return unit;
                default:
                    DrawScope drawScope = (DrawScope) obj;
                    GroupComponent groupComponent = vectorComponent.root;
                    float f = vectorComponent.rootScaleX;
                    float f2 = vectorComponent.rootScaleY;
                    SVG drawContext = drawScope.getDrawContext();
                    long m796getSizeNHjbRc = drawContext.m796getSizeNHjbRc();
                    drawContext.getCanvas().save();
                    try {
                        ((PopupMenu$1) drawContext.rootElement).m7scale0AR0LA0(f, f2, 0L);
                        groupComponent.draw(drawScope);
                        return unit;
                    } finally {
                        Animation.CC.m(drawContext, m796getSizeNHjbRc);
                    }
            }
        }
    }

    public VectorComponent(GroupComponent groupComponent) {
        this.root = groupComponent;
        groupComponent.invalidateListener = new AnonymousClass1(this, 0);
        this.name = "";
        this.isDirty = true;
        this.cacheDrawScope = new DrawCache();
        this.invalidateCallback = PathComponent$pathMeasure$2.INSTANCE$1;
        this.intrinsicColorFilter$delegate = Updater.mutableStateOf$default(null);
        this.viewportSize$delegate = Updater.mutableStateOf$default(new Size(0L));
        this.previousDrawSize = 9205357640488583168L;
        this.rootScaleX = 1.0f;
        this.rootScaleY = 1.0f;
        this.drawVectorBlock = new AnonymousClass1(this, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r3 != r8) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0111, code lost:
    
        if (r9.config == r3) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.graphics.drawscope.DrawScope r32, float r33, androidx.compose.ui.graphics.BlendModeColorFilter r34) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.VectorComponent.draw(androidx.compose.ui.graphics.drawscope.DrawScope, float, androidx.compose.ui.graphics.BlendModeColorFilter):void");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Params: \tname: ");
        sb.append(this.name);
        sb.append("\n\tviewportWidth: ");
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.viewportSize$delegate;
        sb.append(Float.intBitsToFloat((int) (((Size) parcelableSnapshotMutableState.getValue()).packedValue >> 32)));
        sb.append("\n\tviewportHeight: ");
        sb.append(Float.intBitsToFloat((int) (((Size) parcelableSnapshotMutableState.getValue()).packedValue & 4294967295L)));
        sb.append("\n");
        return sb.toString();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void draw(DrawScope drawScope) {
        draw(drawScope, 1.0f, null);
    }
}
