package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import androidx.room.Room;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractLazyTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedTypeParameterDescriptor extends AbstractLazyTypeParameterDescriptor {
    public final DeserializedAnnotations annotations;
    public final HCaptcha c;
    public final ProtoBuf$TypeParameter proto;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeserializedTypeParameterDescriptor(com.hcaptcha.sdk.HCaptcha r10, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter r11, int r12) {
        /*
            r9 = this;
            java.lang.Object r0 = r10.result
            org.wikipedia.databinding.ActivityGalleryBinding r0 = (org.wikipedia.databinding.ActivityGalleryBinding) r0
            java.lang.Object r0 = r0.captionEditButton
            r6 = r0
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r6 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r6
            java.lang.Object r0 = r10.onSuccessListeners
            r3 = r0
            kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r3 = (kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor) r3
            java.lang.Object r0 = r10.hCaptchaException
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r0 = (kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver) r0
            int r1 = r11.name_
            kotlin.reflect.jvm.internal.impl.name.Name r5 = androidx.room.Room.getName(r0, r1)
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter$Variance r0 = r11.variance_
            r0.getClass()
            int[] r1 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags.WhenMappings.$EnumSwitchMapping$5
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            if (r0 == r1) goto L3a
            r1 = 2
            if (r0 == r1) goto L37
            r1 = 3
            if (r0 != r1) goto L32
            kotlin.reflect.jvm.internal.impl.types.Variance r0 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
        L30:
            r7 = r0
            goto L3d
        L32:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            r9 = 0
            throw r9
        L37:
            kotlin.reflect.jvm.internal.impl.types.Variance r0 = kotlin.reflect.jvm.internal.impl.types.Variance.OUT_VARIANCE
            goto L30
        L3a:
            kotlin.reflect.jvm.internal.impl.types.Variance r0 = kotlin.reflect.jvm.internal.impl.types.Variance.IN_VARIANCE
            goto L30
        L3d:
            boolean r8 = r11.reified_
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1 r4 = kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations.Companion.EMPTY
            r1 = r9
            r2 = r12
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r1.c = r10
            r1.proto = r11
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations r9 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedAnnotations
            leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1 r10 = new leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1
            r11 = 16
            r10.<init>(r11, r1)
            r9.<init>(r6, r10)
            r1.annotations = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor.<init>(com.hcaptcha.sdk.HCaptcha, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter, int):void");
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.annotations;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    public final List resolveUpperBounds() {
        HCaptcha hCaptcha = this.c;
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        ProtoBuf$TypeParameter protoBuf$TypeParameter = this.proto;
        protoBuf$TypeParameter.getClass();
        List list = protoBuf$TypeParameter.upperBound_;
        boolean isEmpty = list.isEmpty();
        ?? r3 = list;
        if (isEmpty) {
            r3 = 0;
        }
        if (r3 == 0) {
            List<Integer> list2 = protoBuf$TypeParameter.upperBoundId_;
            list2.getClass();
            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
            for (Integer num : list2) {
                num.getClass();
                r3.add(dispatcher$promoteAndExecute$Effects.get(num.intValue()));
            }
        }
        if (r3.isEmpty()) {
            return Room.listOf(DescriptorUtilsKt.getBuiltIns(this).getDefaultBound());
        }
        GsonBuilder gsonBuilder = (GsonBuilder) hCaptcha.captchaVerifier;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r3, 10));
        Iterator it = r3.iterator();
        while (it.hasNext()) {
            arrayList.add(gsonBuilder.type((ProtoBuf$Type) it.next()));
        }
        return arrayList;
    }
}
