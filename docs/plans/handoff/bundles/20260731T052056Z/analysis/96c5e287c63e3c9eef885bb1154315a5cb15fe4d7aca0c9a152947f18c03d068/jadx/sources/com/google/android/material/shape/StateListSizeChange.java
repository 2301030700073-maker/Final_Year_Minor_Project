package com.google.android.material.shape;

import coil3.memory.MemoryCacheService;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StateListSizeChange {
    public MemoryCacheService defaultSizeChange;
    public MemoryCacheService[] sizeChanges;
    public int stateCount;
    public int[][] stateSpecs;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SizeChangeType {
        private static final /* synthetic */ SizeChangeType[] $VALUES;
        public static final SizeChangeType PERCENT;
        public static final SizeChangeType PIXELS;

        static {
            SizeChangeType sizeChangeType = new SizeChangeType("PERCENT", 0);
            PERCENT = sizeChangeType;
            SizeChangeType sizeChangeType2 = new SizeChangeType("PIXELS", 1);
            PIXELS = sizeChangeType2;
            $VALUES = new SizeChangeType[]{sizeChangeType, sizeChangeType2};
        }

        public static SizeChangeType valueOf(String str) {
            return (SizeChangeType) Enum.valueOf(SizeChangeType.class, str);
        }

        public static SizeChangeType[] values() {
            return (SizeChangeType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadSizeChangeFromItems(android.content.Context r12, android.content.res.XmlResourceParser r13, android.util.AttributeSet r14, android.content.res.Resources.Theme r15) {
        /*
            r11 = this;
            int r0 = r13.getDepth()
            r1 = 1
            int r0 = r0 + r1
        L6:
            int r2 = r13.next()
            if (r2 == r1) goto Ld0
            int r3 = r13.getDepth()
            if (r3 >= r0) goto L15
            r4 = 3
            if (r2 == r4) goto Ld0
        L15:
            r4 = 2
            if (r2 != r4) goto L6
            if (r3 > r0) goto L6
            java.lang.String r2 = r13.getName()
            java.lang.String r3 = "item"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L27
            goto L6
        L27:
            android.content.res.Resources r2 = r12.getResources()
            int[] r3 = com.google.android.material.R$styleable.StateListSizeChange
            r4 = 0
            if (r15 != 0) goto L35
            android.content.res.TypedArray r2 = r2.obtainAttributes(r14, r3)
            goto L39
        L35:
            android.content.res.TypedArray r2 = r15.obtainStyledAttributes(r14, r3, r4, r4)
        L39:
            android.util.TypedValue r3 = r2.peekValue(r4)
            if (r3 != 0) goto L40
            goto L6d
        L40:
            int r5 = r3.type
            r6 = 5
            if (r5 != r6) goto L5c
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r5 = new com.google.android.material.shape.StateListSizeChange$SizeChangeAmount
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r6 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.PIXELS
            int r3 = r3.data
            android.content.res.Resources r7 = r2.getResources()
            android.util.DisplayMetrics r7 = r7.getDisplayMetrics()
            int r3 = android.util.TypedValue.complexToDimensionPixelSize(r3, r7)
            float r3 = (float) r3
            r5.<init>(r6, r3)
            goto L6e
        L5c:
            r6 = 6
            if (r5 != r6) goto L6d
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r5 = new com.google.android.material.shape.StateListSizeChange$SizeChangeAmount
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r6 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.PERCENT
            r7 = 1065353216(0x3f800000, float:1.0)
            float r3 = r3.getFraction(r7, r7)
            r5.<init>(r6, r3)
            goto L6e
        L6d:
            r5 = 0
        L6e:
            r2.recycle()
            int r2 = r14.getAttributeCount()
            int[] r3 = new int[r2]
            r6 = r4
            r7 = r6
        L79:
            if (r6 >= r2) goto L94
            int r8 = r14.getAttributeNameResource(r6)
            r9 = 2130970334(0x7f0406de, float:1.7549375E38)
            if (r8 == r9) goto L91
            int r9 = r7 + 1
            boolean r10 = r14.getAttributeBooleanValue(r6, r4)
            if (r10 == 0) goto L8d
            goto L8e
        L8d:
            int r8 = -r8
        L8e:
            r3[r7] = r8
            r7 = r9
        L91:
            int r6 = r6 + 1
            goto L79
        L94:
            int[] r2 = android.util.StateSet.trimStateSet(r3, r7)
            coil3.memory.MemoryCacheService r3 = new coil3.memory.MemoryCacheService
            r6 = 26
            r3.<init>(r4, r6)
            r3.imageLoader = r5
            int r5 = r11.stateCount
            if (r5 == 0) goto La8
            int r6 = r2.length
            if (r6 != 0) goto Laa
        La8:
            r11.defaultSizeChange = r3
        Laa:
            int[][] r6 = r11.stateSpecs
            int r7 = r6.length
            if (r5 < r7) goto Lc1
            int r7 = r5 + 10
            int[][] r8 = new int[r7][]
            java.lang.System.arraycopy(r6, r4, r8, r4, r5)
            r11.stateSpecs = r8
            coil3.memory.MemoryCacheService[] r6 = new coil3.memory.MemoryCacheService[r7]
            coil3.memory.MemoryCacheService[] r7 = r11.sizeChanges
            java.lang.System.arraycopy(r7, r4, r6, r4, r5)
            r11.sizeChanges = r6
        Lc1:
            int[][] r4 = r11.stateSpecs
            int r5 = r11.stateCount
            r4[r5] = r2
            coil3.memory.MemoryCacheService[] r2 = r11.sizeChanges
            r2[r5] = r3
            int r5 = r5 + r1
            r11.stateCount = r5
            goto L6
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.shape.StateListSizeChange.loadSizeChangeFromItems(android.content.Context, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SizeChangeAmount implements BaseKeyframeAnimation.KeyframesWrapper {
        public float amount;
        public final Object type;

        public SizeChangeAmount(List list) {
            this.amount = -1.0f;
            this.type = (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe getCurrentKeyframe() {
            return (Keyframe) this.type;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return ((Keyframe) this.type).getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return ((Keyframe) this.type).getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float f) {
            if (this.amount == f) {
                return true;
            }
            this.amount = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float f) {
            return !((Keyframe) this.type).isStatic();
        }

        public SizeChangeAmount(SizeChangeType sizeChangeType, float f) {
            this.type = sizeChangeType;
            this.amount = f;
        }
    }
}
