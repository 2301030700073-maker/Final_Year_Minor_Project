package kotlinx.serialization.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {
    public final Lazy _hashCode$delegate;
    public int added = -1;
    public final Lazy childSerializers$delegate;
    public final int elementsCount;
    public final boolean[] elementsOptionality;
    public final GeneratedSerializer generatedSerializer;
    public Map indices;
    public final String[] names;
    public final List[] propertiesAnnotations;
    public final String serialName;
    public final Lazy typeParameterDescriptors$delegate;

    public PluginGeneratedSerialDescriptor(String str, GeneratedSerializer generatedSerializer, int i) {
        this.serialName = str;
        this.generatedSerializer = generatedSerializer;
        this.elementsCount = i;
        String[] strArr = new String[i];
        final int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            strArr[i3] = "[UNINITIALIZED]";
        }
        this.names = strArr;
        int i4 = this.elementsCount;
        this.propertiesAnnotations = new List[i4];
        this.elementsOptionality = new boolean[i4];
        this.indices = EmptyMap.INSTANCE;
        Function0 function0 = new Function0(this) { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda0
            public final /* synthetic */ PluginGeneratedSerialDescriptor f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i2;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f$0;
                switch (i5) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.generatedSerializer;
                        return generatedSerializer2 != null ? generatedSerializer2.childSerializers() : TuplesKt.EMPTY_SERIALIZER_ARRAY;
                    case 1:
                        return TuplesKt.compactArray(pluginGeneratedSerialDescriptor.generatedSerializer != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(TuplesKt.hashCodeImpl(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.typeParameterDescriptors$delegate.getValue()));
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.childSerializers$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i5 = 1;
        this.typeParameterDescriptors$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda0
            public final /* synthetic */ PluginGeneratedSerialDescriptor f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i52 = i5;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f$0;
                switch (i52) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.generatedSerializer;
                        return generatedSerializer2 != null ? generatedSerializer2.childSerializers() : TuplesKt.EMPTY_SERIALIZER_ARRAY;
                    case 1:
                        return TuplesKt.compactArray(pluginGeneratedSerialDescriptor.generatedSerializer != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(TuplesKt.hashCodeImpl(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.typeParameterDescriptors$delegate.getValue()));
                }
            }
        });
        final int i6 = 2;
        this._hashCode$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlinx.serialization.internal.PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda0
            public final /* synthetic */ PluginGeneratedSerialDescriptor f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i52 = i6;
                PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f$0;
                switch (i52) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = pluginGeneratedSerialDescriptor.generatedSerializer;
                        return generatedSerializer2 != null ? generatedSerializer2.childSerializers() : TuplesKt.EMPTY_SERIALIZER_ARRAY;
                    case 1:
                        return TuplesKt.compactArray(pluginGeneratedSerialDescriptor.generatedSerializer != null ? new ArrayList(0) : null);
                    default:
                        return Integer.valueOf(TuplesKt.hashCodeImpl(pluginGeneratedSerialDescriptor, (SerialDescriptor[]) pluginGeneratedSerialDescriptor.typeParameterDescriptors$delegate.getValue()));
                }
            }
        });
    }

    public final void addElement(String str, boolean z) {
        str.getClass();
        int i = this.added + 1;
        this.added = i;
        String[] strArr = this.names;
        strArr[i] = str;
        this.elementsOptionality[i] = z;
        this.propertiesAnnotations[i] = null;
        if (i == this.elementsCount - 1) {
            HashMap hashMap = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                hashMap.put(strArr[i2], Integer.valueOf(i2));
            }
            this.indices = hashMap;
        }
    }

    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (this.serialName.equals(serialDescriptor.getSerialName()) && Arrays.equals((SerialDescriptor[]) this.typeParameterDescriptors$delegate.getValue(), (SerialDescriptor[]) ((PluginGeneratedSerialDescriptor) obj).typeParameterDescriptors$delegate.getValue())) {
                int elementsCount = serialDescriptor.getElementsCount();
                int i2 = this.elementsCount;
                if (i2 == elementsCount) {
                    for (0; i < i2; i + 1) {
                        i = (Intrinsics.areEqual(getElementDescriptor(i).getSerialName(), serialDescriptor.getElementDescriptor(i).getSerialName()) && Intrinsics.areEqual(getElementDescriptor(i).getKind(), serialDescriptor.getElementDescriptor(i).getKind())) ? i + 1 : 0;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getAnnotations() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getElementAnnotations(int i) {
        List list = this.propertiesAnnotations[i];
        return list == null ? EmptyList.INSTANCE : list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public SerialDescriptor getElementDescriptor(int i) {
        return ((KSerializer[]) this.childSerializers$delegate.getValue())[i].getDescriptor();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementIndex(String str) {
        str.getClass();
        Integer num = (Integer) this.indices.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getElementName(int i) {
        return this.names[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public RangesKt getKind() {
        return StructureKind$MAP.INSTANCE$1;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public final Set getSerialNames() {
        return this.indices.keySet();
    }

    public int hashCode() {
        return ((Number) this._hashCode$delegate.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isElementOptional(int i) {
        return this.elementsOptionality[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public /* bridge */ boolean isInline() {
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final /* bridge */ boolean isNullable() {
        return false;
    }

    public String toString() {
        return TuplesKt.toStringImpl(this);
    }
}
