package okhttp3.internal.http2;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.FloatTweenSpec;
import androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R$styleable;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Huffman {
    public static final int[] CODES = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};
    public static final byte[] CODE_BIT_COUNTS = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};
    public static final Node root = new Node();

    static {
        Node[] nodeArr;
        for (int i = 0; i < 256; i++) {
            int i2 = CODES[i];
            int i3 = CODE_BIT_COUNTS[i];
            Node node = new Node(i, i3);
            Node node2 = root;
            while (true) {
                nodeArr = (Node[]) node2.children;
                if (i3 > 8) {
                    i3 -= 8;
                    int i4 = (i2 >>> i3) & 255;
                    nodeArr.getClass();
                    Node node3 = nodeArr[i4];
                    if (node3 == null) {
                        node3 = new Node();
                        nodeArr[i4] = node3;
                    }
                    node2 = node3;
                }
            }
            int i5 = 8 - i3;
            int i6 = (i2 << i5) & 255;
            nodeArr.getClass();
            Arrays.fill(nodeArr, i6, (1 << i5) + i6, node);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Node implements VectorizedDurationBasedAnimationSpec, OffsetMapping, Applier {
        public final Object children;
        public final int symbol;
        public int terminalBitCount;

        public Node(Context context, XmlResourceParser xmlResourceParser) {
            this.children = new ArrayList();
            this.terminalBitCount = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.symbol = obtainStyledAttributes.getResourceId(index, this.symbol);
                } else if (index == 1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.terminalBitCount);
                    this.terminalBitCount = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        new ConstraintSet().clone(context, resourceId);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.compose.runtime.Applier
        public void apply(Object obj, Function2 function2) {
            ((Applier) this.children).apply(obj, function2);
        }

        public String decodeToStringAndReset() {
            try {
                return StringsKt__StringsJVMKt.decodeToString(this.terminalBitCount, (byte[]) ((SynchronizedLazyImpl) this.children).getValue());
            } finally {
                this.terminalBitCount = 0;
            }
        }

        @Override // androidx.compose.runtime.Applier
        public void down(Object obj) {
            this.terminalBitCount++;
            ((Applier) this.children).down(obj);
        }

        @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
        public int getDelayMillis() {
            return this.terminalBitCount;
        }

        @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
        public int getDurationMillis() {
            return this.symbol;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return (getDurationMillis() + getDelayMillis()) * 1000000;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.children).getVelocityFromNanos(getDurationNanos(animationVector, animationVector2, animationVector3), animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.children).getValueFromNanos(j, animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((Dispatcher) this.children).getVelocityFromNanos(j, animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.runtime.Applier
        public void insertBottomUp(int i, Object obj) {
            ((Applier) this.children).insertBottomUp(i + (this.terminalBitCount == 0 ? this.symbol : 0), obj);
        }

        @Override // androidx.compose.runtime.Applier
        public void insertTopDown(int i, Object obj) {
            ((Applier) this.children).insertTopDown(i + (this.terminalBitCount == 0 ? this.symbol : 0), obj);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public /* synthetic */ boolean isInfinite() {
            return false;
        }

        @Override // androidx.compose.runtime.Applier
        public void move(int i, int i2, int i3) {
            int i4 = this.terminalBitCount == 0 ? this.symbol : 0;
            ((Applier) this.children).move(i + i4, i2 + i4, i3);
        }

        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int originalToTransformed(int i) {
            int originalToTransformed = ((OffsetMapping) this.children).originalToTransformed(i);
            if (i >= 0 && i <= this.symbol) {
                ValidatingOffsetMappingKt.validateOriginalToTransformed(originalToTransformed, this.terminalBitCount, i);
            }
            return originalToTransformed;
        }

        @Override // androidx.compose.runtime.Applier
        public void remove(int i, int i2) {
            ((Applier) this.children).remove(i + (this.terminalBitCount == 0 ? this.symbol : 0), i2);
        }

        @Override // androidx.compose.runtime.Applier
        public void reuse() {
            ((Applier) this.children).reuse();
        }

        @Override // androidx.compose.ui.text.input.OffsetMapping
        public int transformedToOriginal(int i) {
            int transformedToOriginal = ((OffsetMapping) this.children).transformedToOriginal(i);
            if (i >= 0 && i <= this.terminalBitCount) {
                ValidatingOffsetMappingKt.validateTransformedToOriginal(transformedToOriginal, this.symbol, i);
            }
            return transformedToOriginal;
        }

        @Override // androidx.compose.runtime.Applier
        public void up() {
            if (this.terminalBitCount <= 0) {
                ComposerKt.composeImmediateRuntimeError("OffsetApplier up called with no corresponding down");
            }
            this.terminalBitCount--;
            ((Applier) this.children).up();
        }

        @Override // androidx.compose.runtime.Applier
        public /* synthetic */ void onEndChanges() {
        }

        public Node(OffsetMapping offsetMapping, int i, int i2) {
            this.children = offsetMapping;
            this.symbol = i;
            this.terminalBitCount = i2;
        }

        public Node(Applier applier, int i) {
            this.children = applier;
            this.symbol = i;
        }

        public Node(int i) {
            this.symbol = i;
            this.children = new SynchronizedLazyImpl(new K9$$ExternalSyntheticLambda0(5, this));
        }

        public Node(int i, int i2, Function0 function0) {
            this.symbol = i;
            this.terminalBitCount = i2;
            this.children = function0;
        }

        public Node() {
            this.children = new Node[256];
            this.symbol = 0;
            this.terminalBitCount = 0;
        }

        public Node(int i, int i2) {
            this.children = null;
            this.symbol = i;
            int i3 = i2 & 7;
            this.terminalBitCount = i3 == 0 ? 8 : i3;
        }

        public Node(int i, int i2, Easing easing) {
            this.symbol = i;
            this.terminalBitCount = i2;
            this.children = new Dispatcher(new FloatTweenSpec(i, i2, easing));
        }
    }
}
