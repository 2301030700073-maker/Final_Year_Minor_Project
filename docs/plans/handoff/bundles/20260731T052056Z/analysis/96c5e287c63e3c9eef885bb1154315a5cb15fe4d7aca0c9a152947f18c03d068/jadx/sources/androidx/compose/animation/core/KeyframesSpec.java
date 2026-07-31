package androidx.compose.animation.core;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KeyframesSpec implements DurationBasedAnimationSpec {
    public final KeyframesSpecConfig config;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeyframeEntity {
        public Easing easing;
        public final Float value;

        public KeyframeEntity(Float f, Easing easing) {
            this.value = f;
            this.easing = easing;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof KeyframeEntity)) {
                return false;
            }
            KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
            return keyframeEntity.value.equals(this.value) && Intrinsics.areEqual(keyframeEntity.easing, this.easing);
        }

        public final int hashCode() {
            return this.easing.hashCode() + (this.value.hashCode() * 961);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeyframesSpecConfig {
        public int durationMillis = 300;
        public final MutableIntObjectMap keyframes;

        public KeyframesSpecConfig() {
            MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.EmptyIntObjectMap;
            this.keyframes = new MutableIntObjectMap();
        }

        public final KeyframeEntity at(Float f, int i) {
            KeyframeEntity keyframeEntity = new KeyframeEntity(f, EasingKt.LinearEasing);
            this.keyframes.set(i, keyframeEntity);
            return keyframeEntity;
        }
    }

    public KeyframesSpec(KeyframesSpecConfig keyframesSpecConfig) {
        this.config = keyframesSpecConfig;
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public final VectorizedKeyframesSpec vectorize(TwoWayConverterImpl twoWayConverterImpl) {
        int[] iArr;
        Object[] objArr;
        int[] iArr2;
        Object[] objArr2;
        int i;
        KeyframesSpecConfig keyframesSpecConfig = this.config;
        MutableIntObjectMap mutableIntObjectMap = keyframesSpecConfig.keyframes;
        MutableIntList mutableIntList = new MutableIntList(mutableIntObjectMap._size + 2);
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap(mutableIntObjectMap._size);
        int[] iArr3 = mutableIntObjectMap.keys;
        Object[] objArr3 = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    while (i5 < i4) {
                        if ((255 & j) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr3[i6];
                            KeyframeEntity keyframeEntity = (KeyframeEntity) objArr3[i6];
                            mutableIntList.add(i7);
                            i = i3;
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            mutableIntObjectMap2.set(i7, new VectorizedKeyframeSpecElementInfo((AnimationVector) twoWayConverterImpl.convertToVector.invoke(keyframeEntity.value), keyframeEntity.easing));
                        } else {
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            i = i3;
                        }
                        j >>= i;
                        i5++;
                        i3 = i;
                        iArr3 = iArr2;
                        objArr3 = objArr2;
                    }
                    iArr = iArr3;
                    objArr = objArr3;
                    if (i4 != i3) {
                        break;
                    }
                } else {
                    iArr = iArr3;
                    objArr = objArr3;
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                iArr3 = iArr;
                objArr3 = objArr;
            }
        }
        if (!mutableIntObjectMap.containsKey(0)) {
            int i8 = mutableIntList._size;
            if (i8 < 0) {
                Gson$$ExternalSyntheticBUOutline0.m$2("Index must be between 0 and size");
                return null;
            }
            mutableIntList.ensureCapacity(i8 + 1);
            int[] iArr4 = mutableIntList.content;
            int i9 = mutableIntList._size;
            if (i9 != 0) {
                ArraysKt___ArraysKt.copyInto(1, 0, i9, iArr4, iArr4);
            }
            iArr4[0] = 0;
            mutableIntList._size++;
        }
        if (!mutableIntObjectMap.containsKey(keyframesSpecConfig.durationMillis)) {
            mutableIntList.add(keyframesSpecConfig.durationMillis);
        }
        int i10 = mutableIntList._size;
        if (i10 != 0) {
            int[] iArr5 = mutableIntList.content;
            iArr5.getClass();
            Arrays.sort(iArr5, 0, i10);
        }
        return new VectorizedKeyframesSpec(mutableIntList, mutableIntObjectMap2, keyframesSpecConfig.durationMillis, EasingKt.LinearEasing);
    }
}
