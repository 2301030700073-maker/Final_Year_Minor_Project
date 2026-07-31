package kotlin.reflect.jvm.internal.impl.protobuf;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GeneratedMessageLite extends AbstractMessageLite implements Serializable {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat$JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr;
            try {
                iArr[WireFormat$JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat$JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Builder implements Cloneable, MessageLiteOrBuilder {
        public ByteString unknownFields = ByteString.EMPTY;

        public abstract AbstractMessageLite build();

        public abstract Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite);

        public abstract Builder mergeFrom(GeneratedMessageLite generatedMessageLite);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ExtendableBuilder extends Builder implements MessageLiteOrBuilder {
        public FieldSet extensions = FieldSet.DEFAULT_INSTANCE;
        public boolean extensionsIsMutable;

        public final void mergeExtensionFields(ExtendableMessage extendableMessage) {
            SmallSortedMap$1 smallSortedMap$1;
            if (!this.extensionsIsMutable) {
                this.extensions = this.extensions.clone();
                this.extensionsIsMutable = true;
            }
            FieldSet fieldSet = this.extensions;
            FieldSet fieldSet2 = extendableMessage.extensions;
            fieldSet.getClass();
            int i = 0;
            while (true) {
                int size = fieldSet2.fields.entryList.size();
                smallSortedMap$1 = fieldSet2.fields;
                if (i >= size) {
                    break;
                }
                fieldSet.mergeFromField((Map.Entry) smallSortedMap$1.entryList.get(i));
                i++;
            }
            Iterator it = smallSortedMap$1.getOverflowEntries().iterator();
            while (it.hasNext()) {
                fieldSet.mergeFromField((Map.Entry) it.next());
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ExtensionDescriptor implements Comparable {
        public final boolean isRepeated;
        public final int number;
        public final WireFormat$FieldType type;

        public ExtensionDescriptor(int i, WireFormat$FieldType wireFormat$FieldType, boolean z) {
            this.number = i;
            this.type = wireFormat$FieldType;
            this.isRepeated = z;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.number - ((ExtensionDescriptor) obj).number;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GeneratedExtension {
        public final AbstractMessageLite containingTypeDefaultInstance;
        public final Object defaultValue;
        public final ExtensionDescriptor descriptor;
        public final Method enumValueOf;
        public final AbstractMessageLite messageDefaultInstance;

        public GeneratedExtension(AbstractMessageLite abstractMessageLite, Object obj, AbstractMessageLite abstractMessageLite2, ExtensionDescriptor extensionDescriptor, Class cls) {
            if (abstractMessageLite == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Null containingTypeDefaultInstance");
                throw null;
            }
            if (extensionDescriptor.type == WireFormat$FieldType.MESSAGE && abstractMessageLite2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Null messageDefaultInstance");
                throw null;
            }
            this.containingTypeDefaultInstance = abstractMessageLite;
            this.defaultValue = obj;
            this.messageDefaultInstance = abstractMessageLite2;
            this.descriptor = extensionDescriptor;
            if (!Internal.EnumLite.class.isAssignableFrom(cls)) {
                this.enumValueOf = null;
                return;
            }
            try {
                this.enumValueOf = cls.getMethod("valueOf", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                String name = cls.getName();
                StringBuilder sb = new StringBuilder(name.length() + 52);
                sb.append("Generated message class \"");
                sb.append(name);
                sb.append("\" missing method \"valueOf\".");
                throw new RuntimeException(sb.toString(), e);
            }
        }

        public final Object singularFromFieldSetType(Object obj) {
            if (this.descriptor.type.getJavaType() == WireFormat$JavaType.ENUM) {
                Object[] objArr = {(Integer) obj};
                obj = null;
                try {
                    return this.enumValueOf.invoke(null, objArr);
                } catch (IllegalAccessException e) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Couldn't use Java reflection to implement protocol message reflection.", (Throwable) e);
                } catch (InvocationTargetException e2) {
                    Throwable cause = e2.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (cause instanceof Error) {
                        throw ((Error) cause);
                    }
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected exception thrown by generated accessor method.", cause);
                    return null;
                }
            }
            return obj;
        }

        public final Object singularToFieldSetType(Object obj) {
            return this.descriptor.type.getJavaType() == WireFormat$JavaType.ENUM ? Integer.valueOf(((Internal.EnumLite) obj).getNumber()) : obj;
        }
    }

    public static GeneratedExtension newRepeatedGeneratedExtension(AbstractMessageLite abstractMessageLite, AbstractMessageLite abstractMessageLite2, int i, WireFormat$FieldType wireFormat$FieldType, Class cls) {
        return new GeneratedExtension(abstractMessageLite, Collections.EMPTY_LIST, abstractMessageLite2, new ExtensionDescriptor(i, wireFormat$FieldType, true), cls);
    }

    public static GeneratedExtension newSingularGeneratedExtension(AbstractMessageLite abstractMessageLite, Object obj, AbstractMessageLite abstractMessageLite2, int i, WireFormat$FieldType wireFormat$FieldType, Class cls) {
        return new GeneratedExtension(abstractMessageLite, obj, abstractMessageLite2, new ExtensionDescriptor(i, wireFormat$FieldType, false), cls);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ExtendableMessage extends GeneratedMessageLite {
        public final FieldSet extensions;

        public ExtendableMessage(ExtendableBuilder extendableBuilder) {
            extendableBuilder.extensions.makeImmutable();
            extendableBuilder.extensionsIsMutable = false;
            this.extensions = extendableBuilder.extensions;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean extensionsAreInitialized() {
            /*
                r3 = this;
                kotlin.reflect.jvm.internal.impl.protobuf.FieldSet r3 = r3.extensions
                kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1 r3 = r3.fields
                r0 = 0
                r1 = r0
            L6:
                java.util.List r2 = r3.entryList
                int r2 = r2.size()
                if (r1 >= r2) goto L20
                java.util.List r2 = r3.entryList
                java.lang.Object r2 = r2.get(r1)
                java.util.Map$Entry r2 = (java.util.Map.Entry) r2
                boolean r2 = kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.isInitialized(r2)
                if (r2 != 0) goto L1d
                goto L3a
            L1d:
                int r1 = r1 + 1
                goto L6
            L20:
                java.lang.Iterable r3 = r3.getOverflowEntries()
                java.util.Iterator r3 = r3.iterator()
            L28:
                boolean r1 = r3.hasNext()
                if (r1 == 0) goto L3b
                java.lang.Object r1 = r3.next()
                java.util.Map$Entry r1 = (java.util.Map.Entry) r1
                boolean r1 = kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.isInitialized(r1)
                if (r1 != 0) goto L28
            L3a:
                return r0
            L3b:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage.extensionsAreInitialized():boolean");
        }

        public final int extensionsSerializedSize() {
            SmallSortedMap$1 smallSortedMap$1 = this.extensions.fields;
            int i = 0;
            for (int i2 = 0; i2 < smallSortedMap$1.entryList.size(); i2++) {
                Map.Entry entry = (Map.Entry) smallSortedMap$1.entryList.get(i2);
                i += FieldSet.computeFieldSize((ExtensionDescriptor) entry.getKey(), entry.getValue());
            }
            for (Map.Entry entry2 : smallSortedMap$1.getOverflowEntries()) {
                i += FieldSet.computeFieldSize((ExtensionDescriptor) entry2.getKey(), entry2.getValue());
            }
            return i;
        }

        public final Object getExtension(GeneratedExtension generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.descriptor;
            Object obj = this.extensions.fields.get(extensionDescriptor);
            if (obj == null) {
                return generatedExtension.defaultValue;
            }
            if (!extensionDescriptor.isRepeated) {
                return generatedExtension.singularFromFieldSetType(obj);
            }
            if (extensionDescriptor.type.getJavaType() != WireFormat$JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(generatedExtension.singularFromFieldSetType(it.next()));
            }
            return arrayList;
        }

        public final boolean hasExtension(GeneratedExtension generatedExtension) {
            verifyExtensionContainingType(generatedExtension);
            ExtensionDescriptor extensionDescriptor = generatedExtension.descriptor;
            FieldSet fieldSet = this.extensions;
            fieldSet.getClass();
            if (!extensionDescriptor.isRepeated) {
                return fieldSet.fields.get(extensionDescriptor) != null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("hasField() can only be called on non-repeated fields.");
            return false;
        }

        public final void makeExtensionsImmutable() {
            this.extensions.makeImmutable();
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r9, com.caverock.androidsvg.SVG.PathDefinition r10, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r11, int r12) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.ExtendableMessage.parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, com.caverock.androidsvg.SVG$PathDefinition, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite, int):boolean");
        }

        public final void verifyExtensionContainingType(GeneratedExtension generatedExtension) {
            if (generatedExtension.containingTypeDefaultInstance == getDefaultInstanceForType()) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }

        public ExtendableMessage() {
            this.extensions = new FieldSet();
        }
    }
}
