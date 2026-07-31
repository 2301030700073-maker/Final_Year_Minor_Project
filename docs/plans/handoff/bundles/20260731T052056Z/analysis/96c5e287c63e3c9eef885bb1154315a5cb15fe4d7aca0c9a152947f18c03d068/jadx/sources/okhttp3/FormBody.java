package okhttp3;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.Latch;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.WeakReference;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder;
import coil3.network.NetworkHeaders;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.internal.ViewUtils;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.lang.reflect.Modifier;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Supplier;
import kotlin.Pair;
import kotlin.Result;
import kotlin.SynchronizedLazyImpl;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgressionIterator;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.NullabilityAnnotationStates;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NotNullTypeParameterImpl;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedFunctionEnhancementInfo;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementInfo;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents$jvmDescriptor$1;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolverImpl$WhenMappings;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ByteValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.CharValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue$ErrorValueWithMessage;
import kotlin.reflect.jvm.internal.impl.resolve.constants.FloatValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.LongValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ShortValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.TypedArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.UIntValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoaderImpl$WhenMappings;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationDeserializer$WhenMappings;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoContainer$Class;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInSerializerProtocol;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser$DataToEraseUpperBound;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.text.Regex;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda0;
import kotlinx.coroutines.channels.BufferedChannel$onReceiveCatching$1;
import kotlinx.coroutines.channels.BufferedChannel$onReceiveCatching$2;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.KTypeWrapper;
import kotlinx.serialization.internal.ParametrizedCacheEntry;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.Exchange$RequestBodySink;
import okhttp3.internal.connection.Exchange$ResponseBodySource;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okhttp3.tls.internal.der.DerAdapter;
import okhttp3.tls.internal.der.DerReader;
import okio.Buffer;
import okio.BufferedSink;
import okio.Sink;
import okio.Socket;
import okio.Source;
import org.jsoup.internal.SoftPool$$ExternalSyntheticThreadLocal1;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.maplibre.android.location.LocationCameraController;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.location.engine.LocationEngineRequest;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.style.expressions.Expression;
import org.wikipedia.readinglist.ReadingListFragment;
import timber.log.Timber;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FormBody extends RequestBody {
    public static final MediaType CONTENT_TYPE;
    public final List encodedNames;
    public final List encodedValues;

    static {
        Regex regex = MediaType.TYPE_SUBTYPE;
        CONTENT_TYPE = ReadingListFragment.MultiSelectCallback.get("application/x-www-form-urlencoded");
    }

    public FormBody(ArrayList arrayList, ArrayList arrayList2) {
        this.encodedNames = _UtilJvmKt.toImmutableList(arrayList);
        this.encodedValues = _UtilJvmKt.toImmutableList(arrayList2);
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final long writeOrCountBytes(BufferedSink bufferedSink, boolean z) {
        Buffer buffer;
        if (z) {
            buffer = new Buffer();
        } else {
            bufferedSink.getClass();
            buffer = bufferedSink.getBuffer();
        }
        List list = this.encodedNames;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                buffer.m877writeByte(38);
            }
            buffer.m879writeUtf8((String) list.get(i));
            buffer.m877writeByte(61);
            buffer.m879writeUtf8((String) this.encodedValues.get(i));
        }
        if (!z) {
            return 0L;
        }
        long j = buffer.size;
        buffer.clear();
        return j;
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(BufferedSink bufferedSink) {
        writeOrCountBytes(bufferedSink, false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder implements ExtendedFloatingActionButton.Size, OnApplyWindowInsetsListener, NullabilityAnnotationStates, ClassDataFinder, NameResolver, ClassicTypeSystemContext, AnnotationAndConstantLoader, ParametrizedSerializerCache, Socket, BasicDerAdapter.Codec, MapLibreMap.CancelableCallback {
        public final /* synthetic */ int $r8$classId;
        public Object names;
        public Object values;

        public Builder(Latch latch) {
            this.$r8$classId = 21;
            ExchangeCodec exchangeCodec = (ExchangeCodec) latch.spareList;
            this.names = new Exchange$RequestBodySink(latch, exchangeCodec.getSocket().getSink(), -1L, true);
            this.values = new Exchange$ResponseBodySource(latch, exchangeCodec.getSocket().getSource(), -1L, true);
        }

        public static String checkInstantiable(Class cls) {
            int modifiers = cls.getModifiers();
            if (Modifier.isInterface(modifiers)) {
                return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
            }
            if (Modifier.isAbstract(modifiers)) {
                return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName());
            }
            return null;
        }

        public static TypeAttributes create(List list) {
            return list.isEmpty() ? TypeAttributes.Empty : new TypeAttributes(list);
        }

        public static Expression[] toExpressionArray(Builder... builderArr) {
            Expression[] expressionArr = new Expression[builderArr.length * 2];
            for (int i = 0; i < builderArr.length; i++) {
                Builder builder = builderArr[i];
                Object obj = builder.names;
                Object obj2 = builder.values;
                if (!(obj instanceof Expression)) {
                    obj = Expression.literal(obj);
                }
                if (!(obj2 instanceof Expression)) {
                    obj2 = Expression.literal(obj2);
                }
                int i2 = i * 2;
                expressionArr[i2] = (Expression) obj;
                expressionArr[i2 + 1] = (Expression) obj2;
            }
            return expressionArr;
        }

        public void append(char c) {
            StringBuilder sb = (StringBuilder) this.values;
            if (sb != null) {
                sb.append(c);
                return;
            }
            if (((String) this.names) == null) {
                this.names = String.valueOf(c);
                return;
            }
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            this.values = borrowBuilder;
            borrowBuilder.append((String) this.names);
            this.names = null;
            ((StringBuilder) this.values).append(c);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean areEqualTypeConstructors(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2) {
            typeConstructorMarker.getClass();
            typeConstructorMarker2.getClass();
            if (!(typeConstructorMarker instanceof TypeConstructor)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return false;
            }
            if (!(typeConstructorMarker2 instanceof TypeConstructor)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return false;
            }
            if (UtilsKt.areEqualTypeConstructors(typeConstructorMarker, typeConstructorMarker2)) {
                return true;
            }
            TypeConstructor typeConstructor = (TypeConstructor) typeConstructorMarker;
            TypeConstructor typeConstructor2 = (TypeConstructor) typeConstructorMarker2;
            Map map = (Map) this.names;
            if (((KotlinTypeChecker.TypeConstructorEquality) this.values).equals(typeConstructor, typeConstructor2)) {
                return true;
            }
            if (map != null) {
                TypeConstructor typeConstructor3 = (TypeConstructor) map.get(typeConstructor);
                TypeConstructor typeConstructor4 = (TypeConstructor) map.get(typeConstructor2);
                if (typeConstructor3 != null && typeConstructor3.equals(typeConstructor2)) {
                    return true;
                }
                if (typeConstructor4 != null && typeConstructor4.equals(typeConstructor)) {
                    return true;
                }
            }
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public int argumentsCount(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.argumentsCount(kotlinTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeArgumentListMarker asArgumentList(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.asArgumentList(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public CapturedTypeMarker asCapturedType(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.asCapturedType(this, simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public DefinitelyNotNullType asDefinitelyNotNullType(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.asDefinitelyNotNullType(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public FlexibleType asFlexibleType(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.asFlexibleType(kotlinTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType asSimpleType(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.asSimpleType(kotlinTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public StarProjectionImpl asTypeArgument(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.asTypeArgument(kotlinTypeMarker);
        }

        public Object borrow() {
            SoftPool$$ExternalSyntheticThreadLocal1 softPool$$ExternalSyntheticThreadLocal1 = (SoftPool$$ExternalSyntheticThreadLocal1) this.names;
            ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) softPool$$ExternalSyntheticThreadLocal1.get()).get();
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                softPool$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
            }
            return !arrayDeque.isEmpty() ? arrayDeque.pop() : ((Supplier) this.values).get();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType captureFromArguments(SimpleTypeMarker simpleTypeMarker, CaptureStatus captureStatus) {
            return UtilsKt.captureFromArguments(simpleTypeMarker, captureStatus);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public CaptureStatus captureStatus(CapturedTypeMarker capturedTypeMarker) {
            return UtilsKt.captureStatus(capturedTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public UnwrappedType createFlexibleType(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
            return UtilsKt.createFlexibleType(this, simpleTypeMarker, simpleTypeMarker2);
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public Object decode(DerReader derReader) {
            derReader.getClass();
            return ((DerAdapter) this.names).fromDer(derReader);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [kotlin.Pair] */
        public AnnotationDescriptorImpl deserializeAnnotation(ProtoBuf$Annotation protoBuf$Annotation, NameResolver nameResolver) {
            Map map;
            protoBuf$Annotation.getClass();
            nameResolver.getClass();
            ModuleAwareClassDescriptor findNonGenericClassAcrossDependencies = DescriptorUtilKt.findNonGenericClassAcrossDependencies((ModuleDescriptor) this.names, Room.getClassId(nameResolver, protoBuf$Annotation.id_), (ImageLoader$Builder) this.values);
            if (protoBuf$Annotation.argument_.size() != 0 && !ErrorUtils.isError(findNonGenericClassAcrossDependencies) && DescriptorUtils.isKindOf(findNonGenericClassAcrossDependencies, ClassKind.ANNOTATION_CLASS)) {
                Collection constructors = findNonGenericClassAcrossDependencies.getConstructors();
                constructors.getClass();
                ClassConstructorDescriptorImpl classConstructorDescriptorImpl = (ClassConstructorDescriptorImpl) CollectionsKt.singleOrNull(constructors);
                if (classConstructorDescriptorImpl != null) {
                    List valueParameters = classConstructorDescriptorImpl.getValueParameters();
                    valueParameters.getClass();
                    int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(valueParameters, 10));
                    if (mapCapacity < 16) {
                        mapCapacity = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                    for (Object obj : valueParameters) {
                        linkedHashMap.put(((ValueParameterDescriptorImpl) obj).getName(), obj);
                    }
                    List<ProtoBuf$Annotation.Argument> list = protoBuf$Annotation.argument_;
                    list.getClass();
                    ArrayList arrayList = new ArrayList();
                    for (ProtoBuf$Annotation.Argument argument : list) {
                        argument.getClass();
                        ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) linkedHashMap.get(Name.guessByFirstCharacter(nameResolver.getString(argument.nameId_)));
                        if (valueParameterDescriptorImpl != null) {
                            Name guessByFirstCharacter = Name.guessByFirstCharacter(nameResolver.getString(argument.nameId_));
                            KotlinType type = valueParameterDescriptorImpl.getType();
                            type.getClass();
                            ProtoBuf$Annotation.Argument.Value value = argument.value_;
                            value.getClass();
                            ConstantValue resolveValue = resolveValue(type, value, nameResolver);
                            r5 = doesValueConformToExpectedType(resolveValue, type, value) ? resolveValue : null;
                            if (r5 == null) {
                                r5 = new ErrorValue$ErrorValueWithMessage("Unexpected argument value: actual type " + value.type_ + " != expected type " + type);
                            }
                            r5 = new Pair(guessByFirstCharacter, r5);
                        }
                        if (r5 != null) {
                            arrayList.add(r5);
                        }
                    }
                    map = MapsKt__MapsKt.toMap(arrayList);
                    return new AnnotationDescriptorImpl(findNonGenericClassAcrossDependencies.getDefaultType(), map, SourceElement.NO_SOURCE);
                }
            }
            map = EmptyMap.INSTANCE;
            return new AnnotationDescriptorImpl(findNonGenericClassAcrossDependencies.getDefaultType(), map, SourceElement.NO_SOURCE);
        }

        public boolean doesValueConformToExpectedType(ConstantValue constantValue, KotlinType kotlinType, ProtoBuf$Annotation.Argument.Value value) {
            ModuleDescriptor moduleDescriptor = (ModuleDescriptor) this.names;
            ProtoBuf$Annotation.Argument.Value.Type type = value.type_;
            int i = type == null ? -1 : AnnotationDeserializer$WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
            if (i != 10) {
                if (i != 13) {
                    return Intrinsics.areEqual(constantValue.getType(moduleDescriptor), kotlinType);
                }
                if (constantValue instanceof ArrayValue) {
                    Object obj = ((ArrayValue) constantValue).value;
                    if (((List) obj).size() == value.arrayElement_.size()) {
                        KotlinType arrayElementType = moduleDescriptor.getBuiltIns().getArrayElementType(kotlinType);
                        Iterable indices = Room.getIndices((Collection) obj);
                        if ((indices instanceof Collection) && ((Collection) indices).isEmpty()) {
                            return true;
                        }
                        Iterator it = indices.iterator();
                        while (((IntProgressionIterator) it).hasNext) {
                            int nextInt = ((IntIterator) it).nextInt();
                            ConstantValue constantValue2 = (ConstantValue) ((List) obj).get(nextInt);
                            ProtoBuf$Annotation.Argument.Value value2 = (ProtoBuf$Annotation.Argument.Value) value.arrayElement_.get(nextInt);
                            value2.getClass();
                            if (!doesValueConformToExpectedType(constantValue2, arrayElementType, value2)) {
                            }
                        }
                        return true;
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Deserialized ArrayValue should have the same number of elements as the original array value: ", constantValue);
                return false;
            }
            ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            if (moduleAwareClassDescriptor == null) {
                return true;
            }
            Name name = KotlinBuiltIns.BUILTINS_MODULE_NAME;
            if (KotlinBuiltIns.classFqNameEquals(moduleAwareClassDescriptor, StandardNames.FqNames.kClass)) {
                return true;
            }
            return false;
        }

        @Override // okhttp3.tls.internal.der.BasicDerAdapter.Codec
        public void encode(Latch latch, Object obj) {
            latch.getClass();
            ((DerAdapter) this.names).toDer(latch, obj);
            Boolean bool = (Boolean) this.values;
            if (bool != null) {
                latch._isOpen = bool.booleanValue();
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
        public ClassData findClassData(ClassId classId) {
            classId.getClass();
            ReflectJavaClassFinder reflectJavaClassFinder = (ReflectJavaClassFinder) this.names;
            DeserializedDescriptorResolver deserializedDescriptorResolver = (DeserializedDescriptorResolver) this.values;
            ((ProtoEnumFlags) deserializedDescriptorResolver.getComponents().licenseIconBy).getClass();
            ReflectKotlinClass findKotlinClass = TuplesKt.findKotlinClass(reflectJavaClassFinder, classId, JvmMetadataVersion.INSTANCE);
            if (findKotlinClass == null) {
                return null;
            }
            ReflectClassUtilKt.getClassId(findKotlinClass.klass).equals(classId);
            return deserializedDescriptorResolver.readClassData$descriptors_jvm(findKotlinClass);
        }

        public void function(String str, Function1 function1) {
            LinkedHashMap linkedHashMap = ((NetworkHeaders.Builder) this.values).data;
            SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = new SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder(this, str);
            function1.invoke(signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder);
            String str2 = (String) this.names;
            ArrayList arrayList = signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameters;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add((String) ((Pair) it.next()).first);
            }
            String str3 = (String) signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returnType.first;
            str3.getClass();
            StringBuilder sb = new StringBuilder(str);
            sb.append('(');
            sb.append(CollectionsKt.joinToString$default(arrayList2, "", null, null, SignatureBuildingComponents$jvmDescriptor$1.INSTANCE, 30));
            sb.append(')');
            if (str3.length() > 1) {
                str3 = Animation.CC.m(';', "L", str3);
            }
            sb.append(str3);
            String str4 = str2 + '.' + sb.toString();
            TypeEnhancementInfo typeEnhancementInfo = (TypeEnhancementInfo) signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returnType.second;
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add((TypeEnhancementInfo) ((Pair) it2.next()).second);
            }
            linkedHashMap.put(str4, new PredefinedFunctionEnhancementInfo(typeEnhancementInfo, arrayList3));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00bc A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00bd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.gson.internal.ObjectConstructor get(com.google.gson.reflect.TypeToken r8) {
            /*
                Method dump skipped, instructions count: 412
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.FormBody.Builder.get(com.google.gson.reflect.TypeToken):com.google.gson.internal.ObjectConstructor");
        }

        @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
        /* renamed from: get-gIAlu-s */
        public Object mo870getgIAlus(KClass kClass, ArrayList arrayList) {
            Object failure;
            Object putIfAbsent;
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.values;
            Class javaClass = UnsignedKt.getJavaClass(kClass);
            Object obj = concurrentHashMap.get(javaClass);
            if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (obj = new ParametrizedCacheEntry()))) != null) {
                obj = putIfAbsent;
            }
            ParametrizedCacheEntry parametrizedCacheEntry = (ParametrizedCacheEntry) obj;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(new KTypeWrapper((KType) it.next()));
            }
            ConcurrentHashMap concurrentHashMap2 = parametrizedCacheEntry.serializers;
            Object obj2 = concurrentHashMap2.get(arrayList2);
            if (obj2 == null) {
                try {
                    failure = (KSerializer) ((Function2) this.names).invoke(kClass, arrayList);
                } catch (Throwable th) {
                    failure = new Result.Failure(th);
                }
                Result result = new Result(failure);
                Object putIfAbsent2 = concurrentHashMap2.putIfAbsent(arrayList2, result);
                obj2 = putIfAbsent2 == null ? result : putIfAbsent2;
            }
            return ((Result) obj2).value;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeProjectionBase getArgument(KotlinTypeMarker kotlinTypeMarker, int i) {
            return UtilsKt.getArgument(kotlinTypeMarker, i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeProjectionBase getArgumentOrNull(SimpleTypeMarker simpleTypeMarker, int i) {
            simpleTypeMarker.getClass();
            if (i < 0 || i >= UtilsKt.argumentsCount(simpleTypeMarker)) {
                return null;
            }
            return UtilsKt.getArgument(simpleTypeMarker, i);
        }

        public UnwrappedType getDefaultType(JavaTypeAttributes javaTypeAttributes) {
            UnwrappedType replaceArgumentsWithStarProjections;
            SimpleType simpleType = javaTypeAttributes.defaultType;
            return (simpleType == null || (replaceArgumentsWithStarProjections = OperationKt.replaceArgumentsWithStarProjections(simpleType)) == null) ? (ErrorType) ((SynchronizedLazyImpl) this.names).getValue() : replaceArgumentsWithStarProjections;
        }

        public KotlinType getErasedUpperBound(TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes) {
            typeParameterDescriptor.getClass();
            javaTypeAttributes.getClass();
            return (KotlinType) ((LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) this.values).invoke(new TypeParameterUpperBoundEraser$DataToEraseUpperBound(typeParameterDescriptor, javaTypeAttributes));
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            ExtendedFloatingActionButton extendedFloatingActionButton = ((ExtendedFloatingActionButton.AnonymousClass1) this.names).this$0;
            ExtendedFloatingActionButton extendedFloatingActionButton2 = (ExtendedFloatingActionButton) this.values;
            int i = extendedFloatingActionButton2.originalHeight;
            if (i != -1) {
                return (i == 0 || i == -2) ? extendedFloatingActionButton.getMeasuredHeight() : i;
            }
            if (!(extendedFloatingActionButton2.getParent() instanceof View)) {
                return extendedFloatingActionButton.getMeasuredHeight();
            }
            View view = (View) extendedFloatingActionButton2.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.height != -2) {
                return (view.getHeight() - ((!(extendedFloatingActionButton2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton2.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingBottom() + view.getPaddingTop());
            }
            return extendedFloatingActionButton.getMeasuredHeight();
        }

        public int getId(KClass kClass) {
            int intValue;
            kClass.getClass();
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.names;
            String qualifiedName = kClass.getQualifiedName();
            qualifiedName.getClass();
            Integer num = (Integer) concurrentHashMap.get(qualifiedName);
            if (num != null) {
                return num.intValue();
            }
            synchronized (concurrentHashMap) {
                try {
                    Integer num2 = (Integer) concurrentHashMap.get(qualifiedName);
                    if (num2 == null) {
                        int andIncrement = ((AtomicInteger) this.values).getAndIncrement();
                        num2 = Integer.valueOf(andIncrement);
                        concurrentHashMap.putIfAbsent(qualifiedName, Integer.valueOf(andIncrement));
                    }
                    intValue = num2.intValue();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return intValue;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public ViewGroup.LayoutParams getLayoutParams() {
            int i = ((ExtendedFloatingActionButton) this.values).originalHeight;
            if (i == 0) {
                i = -2;
            }
            return new ViewGroup.LayoutParams(-1, i);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingEnd() {
            return ((ExtendedFloatingActionButton) this.values).extendedPaddingEnd;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getPaddingStart() {
            return ((ExtendedFloatingActionButton) this.values).extendedPaddingStart;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeParameterDescriptor getParameter(TypeConstructorMarker typeConstructorMarker, int i) {
            return UtilsKt.getParameter(typeConstructorMarker, i);
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
        public String getQualifiedClassName(int i) {
            Triple traverseIds = traverseIds(i);
            List list = (List) traverseIds.first;
            String joinToString$default = CollectionsKt.joinToString$default((List) traverseIds.second, ".", null, null, null, 62);
            if (list.isEmpty()) {
                return joinToString$default;
            }
            return CollectionsKt.joinToString$default(list, "/", null, null, null, 62) + '/' + joinToString$default;
        }

        @Override // okio.Socket
        public Sink getSink() {
            return (Exchange$RequestBodySink) this.names;
        }

        @Override // okio.Socket
        public Source getSource() {
            return (Exchange$ResponseBodySource) this.values;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
        public String getString(int i) {
            String str = (String) ((ProtoBuf$StringTable) this.names).string_.get(i);
            str.getClass();
            return str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public UnwrappedType getType(TypeProjectionBase typeProjectionBase) {
            return UtilsKt.getType(typeProjectionBase);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeVariance getVariance(TypeParameterDescriptor typeParameterDescriptor) {
            typeParameterDescriptor.getClass();
            Variance variance = typeParameterDescriptor.getVariance();
            variance.getClass();
            return Operation$State.convertVariance(variance);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            ExtendedFloatingActionButton.AnonymousClass1 anonymousClass1 = (ExtendedFloatingActionButton.AnonymousClass1) this.names;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.values;
            if (!(extendedFloatingActionButton.getParent() instanceof View)) {
                return anonymousClass1.getWidth();
            }
            View view = (View) extendedFloatingActionButton.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.width != -2) {
                return (view.getWidth() - ((!(extendedFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) extendedFloatingActionButton.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingRight() + view.getPaddingLeft());
            }
            return anonymousClass1.getWidth();
        }

        public boolean hasData() {
            return (((StringBuilder) this.values) == null && ((String) this.names) == null) ? false : true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean hasFlexibleNullability(UnwrappedType unwrappedType) {
            unwrappedType.getClass();
            return UtilsKt.isMarkedNullable(lowerBoundIfFlexible(unwrappedType)) != UtilsKt.isMarkedNullable(upperBoundIfFlexible(unwrappedType));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean hasRecursiveBounds(TypeParameterDescriptor typeParameterDescriptor, TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.hasRecursiveBounds(typeParameterDescriptor, typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
            return UtilsKt.identicalArguments(simpleTypeMarker, simpleTypeMarker2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public UnwrappedType intersectTypes(ArrayList arrayList) {
            SimpleType simpleType;
            int size = arrayList.size();
            if (size == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Expected some types");
                return null;
            }
            if (size == 1) {
                return (UnwrappedType) CollectionsKt.single((List) arrayList);
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            boolean z = false;
            boolean z2 = false;
            while (it.hasNext()) {
                UnwrappedType unwrappedType = (UnwrappedType) it.next();
                z = z || KotlinTypeKt.isError(unwrappedType);
                if (unwrappedType instanceof SimpleType) {
                    simpleType = (SimpleType) unwrappedType;
                } else {
                    if (!(unwrappedType instanceof FlexibleType)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    simpleType = ((FlexibleType) unwrappedType).lowerBound;
                    z2 = true;
                }
                arrayList2.add(simpleType);
            }
            if (z) {
                return ErrorUtils.createErrorType(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, arrayList.toString());
            }
            TypeIntersector typeIntersector = TypeIntersector.INSTANCE;
            if (!z2) {
                return typeIntersector.intersectTypes$descriptors(arrayList2);
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add(KotlinTypeKt.upperIfFlexible((UnwrappedType) it2.next()));
            }
            return KotlinTypeKt.flexibleType(typeIntersector.intersectTypes$descriptors(arrayList2), typeIntersector.intersectTypes$descriptors(arrayList3));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isAnyConstructor(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isAnyConstructor(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isCapturedType(SimpleTypeMarker simpleTypeMarker) {
            simpleTypeMarker.getClass();
            SimpleType asSimpleType = UtilsKt.asSimpleType(simpleTypeMarker);
            return (asSimpleType != null ? UtilsKt.asCapturedType(this, asSimpleType) : null) != null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isClassType(SimpleTypeMarker simpleTypeMarker) {
            simpleTypeMarker.getClass();
            return UtilsKt.isClassTypeConstructor(UtilsKt.typeConstructor(simpleTypeMarker));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isClassTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isClassTypeConstructor(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isCommonFinalClassConstructor(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isCommonFinalClassConstructor(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isDefinitelyNotNullType(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
            return (asSimpleType != null ? UtilsKt.asDefinitelyNotNullType(asSimpleType) : null) != null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isDenotable(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isDenotable(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public void isDynamic(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            UtilsKt.asFlexibleType(kotlinTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isError(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.isError(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isIntegerLiteralType(SimpleTypeMarker simpleTypeMarker) {
            simpleTypeMarker.getClass();
            return UtilsKt.isIntegerLiteralTypeConstructor(UtilsKt.typeConstructor(simpleTypeMarker));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isIntegerLiteralTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isIntegerLiteralTypeConstructor(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isIntersection(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isIntersection(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
        public boolean isLocalClassName(int i) {
            return ((Boolean) traverseIds(i).third).booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isMarkedNullable(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.isMarkedNullable(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isNotNullTypeParameter(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            return kotlinTypeMarker instanceof NotNullTypeParameterImpl;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isNothing(SimpleTypeMarker simpleTypeMarker) {
            simpleTypeMarker.getClass();
            return UtilsKt.isNothingConstructor(typeConstructor((KotlinTypeMarker) simpleTypeMarker)) && !UtilsKt.isNullableType(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isNothingConstructor(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.isNothingConstructor(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isOldCapturedType(CapturedTypeMarker capturedTypeMarker) {
            return capturedTypeMarker instanceof CapturedType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isProjectionNotNull(CapturedTypeMarker capturedTypeMarker) {
            return UtilsKt.isProjectionNotNull(capturedTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public boolean isStarProjection(TypeProjectionBase typeProjectionBase) {
            return UtilsKt.isStarProjection(typeProjectionBase);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public void isStubType(SimpleTypeMarker simpleTypeMarker) {
            UtilsKt.isStubType(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public void isStubTypeForBuilderInference(SimpleTypeMarker simpleTypeMarker) {
            UtilsKt.isStubTypeForBuilderInference(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
        public Object loadAnnotationDefaultValue(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadCallableAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind) {
            List list;
            BuiltInSerializerProtocol builtInSerializerProtocol = (BuiltInSerializerProtocol) this.names;
            annotatedCallableKind.getClass();
            if (abstractMessageLite instanceof ProtoBuf$Constructor) {
                list = (List) ((ProtoBuf$Constructor) abstractMessageLite).getExtension(builtInSerializerProtocol.constructorAnnotation);
            } else if (abstractMessageLite instanceof ProtoBuf$Function) {
                list = (List) ((ProtoBuf$Function) abstractMessageLite).getExtension(builtInSerializerProtocol.functionAnnotation);
            } else {
                if (!(abstractMessageLite instanceof ProtoBuf$Property)) {
                    Gson$$ExternalSyntheticBUOutline0.m$8("Unknown message: ", abstractMessageLite);
                    return null;
                }
                int i = AnnotationAndConstantLoaderImpl$WhenMappings.$EnumSwitchMapping$0[annotatedCallableKind.ordinal()];
                if (i == 1) {
                    list = (List) ((ProtoBuf$Property) abstractMessageLite).getExtension(builtInSerializerProtocol.propertyAnnotation);
                } else if (i == 2) {
                    list = (List) ((ProtoBuf$Property) abstractMessageLite).getExtension(builtInSerializerProtocol.propertyGetterAnnotation);
                } else {
                    if (i != 3) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unsupported callable kind with property proto");
                        return null;
                    }
                    list = (List) ((ProtoBuf$Property) abstractMessageLite).getExtension(builtInSerializerProtocol.propertySetterAnnotation);
                }
            }
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), (NameResolver) abstractApplier.root));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public ArrayList loadClassAnnotations(ProtoContainer$Class protoContainer$Class) {
            protoContainer$Class.getClass();
            Iterable iterable = (List) protoContainer$Class.classProto.getExtension(((BuiltInSerializerProtocol) this.names).classAnnotation);
            if (iterable == null) {
                iterable = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), (NameResolver) protoContainer$Class.root));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadEnumEntryAnnotations(AbstractApplier abstractApplier, ProtoBuf$EnumEntry protoBuf$EnumEntry) {
            abstractApplier.getClass();
            Iterable iterable = (List) protoBuf$EnumEntry.getExtension(((BuiltInSerializerProtocol) this.names).enumEntryAnnotation);
            if (iterable == null) {
                iterable = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), (NameResolver) abstractApplier.root));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadExtensionReceiverParameterAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind) {
            annotatedCallableKind.getClass();
            if (!(abstractMessageLite instanceof ProtoBuf$Function)) {
                if (!(abstractMessageLite instanceof ProtoBuf$Property)) {
                    Gson$$ExternalSyntheticBUOutline0.m$8("Unknown message: ", abstractMessageLite);
                    return null;
                }
                int i = AnnotationAndConstantLoaderImpl$WhenMappings.$EnumSwitchMapping$0[annotatedCallableKind.ordinal()];
                if (i != 1 && i != 2 && i != 3) {
                    Gson$$ExternalSyntheticBUOutline0.m$8("Unsupported callable kind with property proto for receiver annotations: ", annotatedCallableKind);
                    return null;
                }
            }
            return new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(EmptyList.INSTANCE, 10));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadPropertyBackingFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property) {
            return new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(EmptyList.INSTANCE, 10));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader
        public Object loadPropertyConstant(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property, KotlinType kotlinType) {
            ProtoBuf$Annotation.Argument.Value value = (ProtoBuf$Annotation.Argument.Value) UuidKt.getExtensionOrNull(protoBuf$Property, ((BuiltInSerializerProtocol) this.names).compileTimeValue);
            if (value == null) {
                return null;
            }
            return ((Builder) this.values).resolveValue(kotlinType, value, (NameResolver) abstractApplier.root);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadPropertyDelegateFieldAnnotations(AbstractApplier abstractApplier, ProtoBuf$Property protoBuf$Property) {
            return new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(EmptyList.INSTANCE, 10));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public ArrayList loadTypeAnnotations(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
            protoBuf$Type.getClass();
            nameResolver.getClass();
            Iterable iterable = (List) protoBuf$Type.getExtension(((BuiltInSerializerProtocol) this.names).typeAnnotation);
            if (iterable == null) {
                iterable = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), nameResolver));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public ArrayList loadTypeParameterAnnotations(ProtoBuf$TypeParameter protoBuf$TypeParameter, NameResolver nameResolver) {
            protoBuf$TypeParameter.getClass();
            nameResolver.getClass();
            Iterable iterable = (List) protoBuf$TypeParameter.getExtension(((BuiltInSerializerProtocol) this.names).typeParameterAnnotation);
            if (iterable == null) {
                iterable = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), nameResolver));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationLoader
        public List loadValueParameterAnnotations(AbstractApplier abstractApplier, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind, int i, ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            annotatedCallableKind.getClass();
            Iterable iterable = (List) protoBuf$ValueParameter.getExtension(((BuiltInSerializerProtocol) this.names).parameterAnnotation);
            if (iterable == null) {
                iterable = EmptyList.INSTANCE;
            }
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((Builder) this.values).deserializeAnnotation((ProtoBuf$Annotation) it.next(), (NameResolver) abstractApplier.root));
            }
            return arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType lowerBound(FlexibleType flexibleType) {
            return UtilsKt.lowerBound(flexibleType);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType lowerBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
            SimpleType lowerBound;
            kotlinTypeMarker.getClass();
            FlexibleType asFlexibleType = UtilsKt.asFlexibleType(kotlinTypeMarker);
            if (asFlexibleType != null && (lowerBound = UtilsKt.lowerBound(asFlexibleType)) != null) {
                return lowerBound;
            }
            SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
            asSimpleType.getClass();
            return asSimpleType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public UnwrappedType lowerType(CapturedTypeMarker capturedTypeMarker) {
            return UtilsKt.lowerType(capturedTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public UnwrappedType makeDefinitelyNotNullOrNotNull(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.makeDefinitelyNotNullOrNotNull(kotlinTypeMarker);
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            ViewUtils.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (ViewUtils.OnApplyWindowInsetsListener) this.names;
            ViewUtils.RelativePadding relativePadding = (ViewUtils.RelativePadding) this.values;
            ViewUtils.RelativePadding relativePadding2 = new ViewUtils.RelativePadding();
            relativePadding2.start = relativePadding.start;
            relativePadding2.top = relativePadding.top;
            relativePadding2.end = relativePadding.end;
            relativePadding2.bottom = relativePadding.bottom;
            return onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsetsCompat, relativePadding2);
        }

        @Override // org.maplibre.android.maps.MapLibreMap.CancelableCallback
        public void onCancel() {
            LocationCameraController locationCameraController = (LocationCameraController) this.values;
            locationCameraController.isTransitioning = false;
            LocationComponent.AnonymousClass6 anonymousClass6 = (LocationComponent.AnonymousClass6) this.names;
            if (anonymousClass6 != null) {
                int i = locationCameraController.cameraMode;
                LocationComponent locationComponent = LocationComponent.this;
                locationComponent.locationAnimatorCoordinator.resetAllCameraAnimations(locationComponent.maplibreMap.transform.getCameraPosition(), i == 36);
            }
        }

        @Override // org.maplibre.android.maps.MapLibreMap.CancelableCallback
        public void onFinish() {
            LocationCameraController locationCameraController = (LocationCameraController) this.values;
            locationCameraController.isTransitioning = false;
            LocationComponent.AnonymousClass6 anonymousClass6 = (LocationComponent.AnonymousClass6) this.names;
            if (anonymousClass6 != null) {
                anonymousClass6.onLocationCameraTransitionFinished(locationCameraController.cameraMode);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType original(DefinitelyNotNullType definitelyNotNullType) {
            return definitelyNotNullType.original;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleTypeMarker originalIfDefinitelyNotNullable(SimpleTypeMarker simpleTypeMarker) {
            SimpleType simpleType;
            simpleTypeMarker.getClass();
            DefinitelyNotNullType asDefinitelyNotNullType = UtilsKt.asDefinitelyNotNullType(simpleTypeMarker);
            return (asDefinitelyNotNullType == null || (simpleType = asDefinitelyNotNullType.original) == null) ? simpleTypeMarker : simpleType;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public int parametersCount(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.parametersCount(typeConstructorMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public Collection possibleIntegerTypes(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.possibleIntegerTypes(this, simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeProjectionBase projection(CapturedTypeConstructor capturedTypeConstructor) {
            return UtilsKt.projection(capturedTypeConstructor);
        }

        public void release(Object obj) {
            SoftPool$$ExternalSyntheticThreadLocal1 softPool$$ExternalSyntheticThreadLocal1 = (SoftPool$$ExternalSyntheticThreadLocal1) this.names;
            ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) softPool$$ExternalSyntheticThreadLocal1.get()).get();
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                softPool$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
            }
            if (arrayDeque.size() < 12) {
                arrayDeque.push(obj);
            }
        }

        public void removeLocationUpdates(WeakReference weakReference) {
            if (weakReference == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("callback == null");
                return;
            }
            Builder builder = (Builder) this.names;
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.values;
            LocationListener locationListener = (LocationListener) (concurrentHashMap != null ? concurrentHashMap.remove(weakReference) : null);
            if (locationListener != null) {
                ((LocationManager) builder.names).removeUpdates(locationListener);
            }
        }

        public void requestLocationUpdates(LocationEngineRequest locationEngineRequest, final WeakReference weakReference, Looper looper) {
            if (weakReference == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("callback == null");
                return;
            }
            Builder builder = (Builder) this.names;
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.values;
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap();
                this.values = concurrentHashMap;
            }
            Object obj = concurrentHashMap.get(weakReference);
            if (obj == null) {
                obj = new LocationListener(weakReference) { // from class: org.maplibre.android.location.engine.MapLibreFusedLocationEngineImpl$MapLibreLocationEngineCallbackTransport
                    public final WeakReference callback;
                    public Location currentBestLocation;

                    {
                        this.callback = weakReference;
                    }

                    @Override // android.location.LocationListener
                    public final void onLocationChanged(Location location) {
                        if (Headers.Companion.isBetterLocation(location, this.currentBestLocation)) {
                            this.currentBestLocation = location;
                        }
                        Location location2 = this.currentBestLocation;
                        ArrayList arrayList = new ArrayList();
                        if (location2 != null) {
                            arrayList.add(location2);
                        }
                        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(arrayList);
                        WeakReference weakReference2 = this.callback;
                        int i = weakReference2.$r8$classId;
                        List list = dispatcher$promoteAndExecute$Effects.callsToExecute;
                        switch (i) {
                            case 2:
                                LocationComponent locationComponent = (LocationComponent) weakReference2.delegate.get();
                                if (locationComponent != null) {
                                    locationComponent.updateLocation(list.isEmpty() ? null : (Location) list.get(0), false);
                                    break;
                                }
                                break;
                            default:
                                LocationComponent locationComponent2 = (LocationComponent) weakReference2.delegate.get();
                                if (locationComponent2 != null) {
                                    locationComponent2.updateLocation(list.isEmpty() ? null : (Location) list.get(0), true);
                                    break;
                                }
                                break;
                        }
                    }

                    @Override // android.location.LocationListener
                    public final void onProviderDisabled(String str) {
                        Timber.Forest.getClass();
                        Timber.Forest.d(new Object[0]);
                    }

                    @Override // android.location.LocationListener
                    public final void onProviderEnabled(String str) {
                        Timber.Forest.getClass();
                        Timber.Forest.d(new Object[0]);
                    }

                    @Override // android.location.LocationListener
                    public final void onStatusChanged(String str, int i, Bundle bundle) {
                        Timber.Forest.getClass();
                        Timber.Forest.d(new Object[0]);
                    }
                };
            }
            ((ConcurrentHashMap) this.values).put(weakReference, obj);
            if (looper == null) {
                looper = Looper.getMainLooper();
            }
            Looper looper2 = looper;
            LocationListener locationListener = (LocationListener) obj;
            LocationManager locationManager = (LocationManager) builder.names;
            Criteria criteria = new Criteria();
            criteria.setAccuracy(1);
            criteria.setCostAllowed(true);
            criteria.setPowerRequirement(3);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider == null) {
                bestProvider = "passive";
            }
            String str = bestProvider;
            builder.values = str;
            ((LocationManager) builder.names).requestLocationUpdates(str, 1000L, RecyclerView.DECELERATION_RATE, locationListener, looper2);
            if (((String) builder.values).equals("gps")) {
                try {
                    ((LocationManager) builder.names).requestLocationUpdates("network", 1000L, RecyclerView.DECELERATION_RATE, locationListener, looper2);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }
        }

        public void reset() {
            StringBuilder sb = (StringBuilder) this.values;
            if (sb != null) {
                String[] strArr = StringUtil.padding;
                if (sb.length() <= 8192) {
                    sb.delete(0, sb.length());
                    StringUtil.BuilderPool.release(sb);
                }
                this.values = null;
            }
            this.names = null;
        }

        public ConstantValue resolveValue(KotlinType kotlinType, ProtoBuf$Annotation.Argument.Value value, NameResolver nameResolver) {
            value.getClass();
            nameResolver.getClass();
            boolean booleanValue = Flags.IS_UNSIGNED.get(value.flags_).booleanValue();
            ProtoBuf$Annotation.Argument.Value.Type type = value.type_;
            switch (type == null ? -1 : AnnotationDeserializer$WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
                case 1:
                    byte b = (byte) value.intValue_;
                    return booleanValue ? new UIntValue(b) : new ByteValue(b);
                case 2:
                    return new CharValue(Character.valueOf((char) value.intValue_));
                case 3:
                    short s = (short) value.intValue_;
                    return booleanValue ? new UIntValue(s) : new ShortValue(s);
                case 4:
                    int i = (int) value.intValue_;
                    return booleanValue ? new UIntValue(i) : new IntValue(i);
                case 5:
                    long j = value.intValue_;
                    return booleanValue ? new UIntValue(j) : new LongValue(j);
                case 6:
                    return new FloatValue(value.floatValue_);
                case 7:
                    return new FloatValue(value.doubleValue_);
                case 8:
                    return new FloatValue(Boolean.valueOf(value.intValue_ != 0));
                case 9:
                    return new StringValue(nameResolver.getString(value.stringValue_));
                case 10:
                    return new KClassValue(Room.getClassId(nameResolver, value.classId_), value.arrayDimensionCount_);
                case 11:
                    return new EnumValue(Room.getClassId(nameResolver, value.classId_), Name.guessByFirstCharacter(nameResolver.getString(value.enumValueId_)));
                case 12:
                    ProtoBuf$Annotation protoBuf$Annotation = value.annotation_;
                    protoBuf$Annotation.getClass();
                    return new AnnotationValue((Object) deserializeAnnotation(protoBuf$Annotation, nameResolver));
                case IMAGE_VALUE:
                    List<ProtoBuf$Annotation.Argument.Value> list = value.arrayElement_;
                    list.getClass();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                    for (ProtoBuf$Annotation.Argument.Value value2 : list) {
                        SimpleType anyType = ((ModuleDescriptor) this.names).getBuiltIns().getAnyType();
                        value2.getClass();
                        arrayList.add(resolveValue(anyType, value2, nameResolver));
                    }
                    return new TypedArrayValue(arrayList, kotlinType);
                default:
                    throw new IllegalStateException(("Unsupported annotation argument type: " + value.type_ + " (expected " + kotlinType + ')').toString());
            }
        }

        public void setValue(Object obj, KProperty kProperty) {
            kProperty.getClass();
            if (Intrinsics.areEqual(this.values, obj)) {
                return;
            }
            this.values = obj;
            ((Worker$$ExternalSyntheticLambda0) this.names).invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public int size(TypeArgumentListMarker typeArgumentListMarker) {
            typeArgumentListMarker.getClass();
            if (typeArgumentListMarker instanceof SimpleTypeMarker) {
                return UtilsKt.argumentsCount((KotlinTypeMarker) typeArgumentListMarker);
            }
            if (typeArgumentListMarker instanceof ArgumentList) {
                return ((ArgumentList) typeArgumentListMarker).size();
            }
            StringBuilder sb = new StringBuilder("unknown type argument list type: ");
            sb.append(typeArgumentListMarker);
            Gson$$ExternalSyntheticBUOutline0.m(sb, ", ", Reflection.factory.getOrCreateKotlinClass(typeArgumentListMarker.getClass()));
            return 0;
        }

        public SetBuilder substituteErasedUpperBounds(TypeSubstitutor typeSubstitutor, List list, JavaTypeAttributes javaTypeAttributes) {
            UnwrappedType unwrappedType;
            TypeSubstitution typeSubstitution = typeSubstitutor.substitution;
            SetBuilder setBuilder = new SetBuilder();
            Iterator it = list.iterator();
            if (it.hasNext()) {
                KotlinType kotlinType = (KotlinType) it.next();
                ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor instanceof ModuleAwareClassDescriptor) {
                    Set set = javaTypeAttributes.visitedTypeParameters;
                    UnwrappedType unwrap = kotlinType.unwrap();
                    if (unwrap instanceof FlexibleType) {
                        FlexibleType flexibleType = (FlexibleType) unwrap;
                        SimpleType simpleType = flexibleType.lowerBound;
                        if (!simpleType.getConstructor().getParameters().isEmpty() && simpleType.getConstructor().getDeclarationDescriptor() != null) {
                            List<TypeParameterDescriptor> parameters = simpleType.getConstructor().getParameters();
                            parameters.getClass();
                            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters, 10));
                            for (TypeParameterDescriptor typeParameterDescriptor : parameters) {
                                TypeProjectionBase typeProjectionBase = (TypeProjectionBase) CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor.getIndex());
                                boolean z = set != null && set.contains(typeParameterDescriptor);
                                if (typeProjectionBase != null && !z) {
                                    KotlinType type = typeProjectionBase.getType();
                                    type.getClass();
                                    if (typeSubstitution.get(type) != null) {
                                        arrayList.add(typeProjectionBase);
                                    }
                                }
                                typeProjectionBase = new StarProjectionImpl(typeParameterDescriptor);
                                arrayList.add(typeProjectionBase);
                            }
                            simpleType = KotlinTypeKt.replace$default(simpleType, arrayList, (TypeAttributes) null, 2);
                        }
                        SimpleType simpleType2 = flexibleType.upperBound;
                        if (!simpleType2.getConstructor().getParameters().isEmpty() && simpleType2.getConstructor().getDeclarationDescriptor() != null) {
                            List<TypeParameterDescriptor> parameters2 = simpleType2.getConstructor().getParameters();
                            parameters2.getClass();
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters2, 10));
                            for (TypeParameterDescriptor typeParameterDescriptor2 : parameters2) {
                                TypeProjectionBase typeProjectionBase2 = (TypeProjectionBase) CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor2.getIndex());
                                boolean z2 = set != null && set.contains(typeParameterDescriptor2);
                                if (typeProjectionBase2 != null && !z2) {
                                    KotlinType type2 = typeProjectionBase2.getType();
                                    type2.getClass();
                                    if (typeSubstitution.get(type2) != null) {
                                        arrayList2.add(typeProjectionBase2);
                                    }
                                }
                                typeProjectionBase2 = new StarProjectionImpl(typeParameterDescriptor2);
                                arrayList2.add(typeProjectionBase2);
                            }
                            simpleType2 = KotlinTypeKt.replace$default(simpleType2, arrayList2, (TypeAttributes) null, 2);
                        }
                        unwrappedType = KotlinTypeKt.flexibleType(simpleType, simpleType2);
                    } else {
                        if (!(unwrap instanceof SimpleType)) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return null;
                        }
                        SimpleType simpleType3 = (SimpleType) unwrap;
                        if (simpleType3.getConstructor().getParameters().isEmpty() || simpleType3.getConstructor().getDeclarationDescriptor() == null) {
                            unwrappedType = simpleType3;
                        } else {
                            List<TypeParameterDescriptor> parameters3 = simpleType3.getConstructor().getParameters();
                            parameters3.getClass();
                            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameters3, 10));
                            for (TypeParameterDescriptor typeParameterDescriptor3 : parameters3) {
                                TypeProjectionBase typeProjectionBase3 = (TypeProjectionBase) CollectionsKt.getOrNull(kotlinType.getArguments(), typeParameterDescriptor3.getIndex());
                                boolean z3 = set != null && set.contains(typeParameterDescriptor3);
                                if (typeProjectionBase3 != null && !z3) {
                                    KotlinType type3 = typeProjectionBase3.getType();
                                    type3.getClass();
                                    if (typeSubstitution.get(type3) != null) {
                                        arrayList3.add(typeProjectionBase3);
                                    }
                                }
                                typeProjectionBase3 = new StarProjectionImpl(typeParameterDescriptor3);
                                arrayList3.add(typeProjectionBase3);
                            }
                            unwrappedType = KotlinTypeKt.replace$default(simpleType3, arrayList3, (TypeAttributes) null, 2);
                        }
                    }
                    setBuilder.add(typeSubstitutor.safeSubstitute(KotlinTypeKt.inheritEnhancement(unwrappedType, unwrap), Variance.OUT_VARIANCE));
                } else if (declarationDescriptor instanceof TypeParameterDescriptor) {
                    Set set2 = javaTypeAttributes.visitedTypeParameters;
                    if (set2 == null || !set2.contains(declarationDescriptor)) {
                        List upperBounds = ((TypeParameterDescriptor) declarationDescriptor).getUpperBounds();
                        upperBounds.getClass();
                        setBuilder.addAll(substituteErasedUpperBounds(typeSubstitutor, upperBounds, javaTypeAttributes));
                    } else {
                        setBuilder.add(getDefaultType(javaTypeAttributes));
                    }
                }
            }
            return UuidKt.build(setBuilder);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public ClassicTypeSystemContext$substitutionSupertypePolicy$2 substitutionSupertypePolicy(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.substitutionSupertypePolicy(this, simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public Collection supertypes(TypeConstructorMarker typeConstructorMarker) {
            return UtilsKt.supertypes(typeConstructorMarker);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 4:
                    return ((HashMap) this.values).toString();
                case 25:
                    StringBuilder sb = (StringBuilder) this.values;
                    if (sb != null) {
                        return sb.toString();
                    }
                    String str = (String) this.names;
                    return str != null ? str : "";
                default:
                    return super.toString();
            }
        }

        public Triple traverseIds(int i) {
            LinkedList linkedList = new LinkedList();
            LinkedList linkedList2 = new LinkedList();
            boolean z = false;
            while (i != -1) {
                ProtoBuf$QualifiedNameTable.QualifiedName qualifiedName = (ProtoBuf$QualifiedNameTable.QualifiedName) ((ProtoBuf$QualifiedNameTable) this.values).qualifiedName_.get(i);
                String str = (String) ((ProtoBuf$StringTable) this.names).string_.get(qualifiedName.shortName_);
                ProtoBuf$QualifiedNameTable.QualifiedName.Kind kind = qualifiedName.kind_;
                kind.getClass();
                int i2 = NameResolverImpl$WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
                if (i2 == 1) {
                    linkedList2.addFirst(str);
                } else if (i2 == 2) {
                    linkedList.addFirst(str);
                } else if (i2 == 3) {
                    linkedList2.addFirst(str);
                    z = true;
                }
                i = qualifiedName.parentQualifiedName_;
            }
            return new Triple(linkedList, linkedList2, Boolean.valueOf(z));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeConstructor typeConstructor(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
            if (asSimpleType == null) {
                asSimpleType = lowerBoundIfFlexible(kotlinTypeMarker);
            }
            return UtilsKt.typeConstructor(asSimpleType);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType upperBound(FlexibleType flexibleType) {
            return UtilsKt.upperBound(flexibleType);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType upperBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
            SimpleType upperBound;
            kotlinTypeMarker.getClass();
            FlexibleType asFlexibleType = UtilsKt.asFlexibleType(kotlinTypeMarker);
            if (asFlexibleType != null && (upperBound = UtilsKt.upperBound(asFlexibleType)) != null) {
                return upperBound;
            }
            SimpleType asSimpleType = UtilsKt.asSimpleType(kotlinTypeMarker);
            asSimpleType.getClass();
            return asSimpleType;
        }

        public String value() {
            StringBuilder sb = (StringBuilder) this.values;
            if (sb == null) {
                String str = (String) this.names;
                return str != null ? str : "";
            }
            this.names = sb.toString();
            StringUtil.releaseBuilder((StringBuilder) this.values);
            this.values = null;
            return (String) this.names;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public SimpleType withNullability(SimpleTypeMarker simpleTypeMarker, boolean z) {
            return UtilsKt.withNullability(simpleTypeMarker, z);
        }

        public void writeUntil(int i, SVG.PathDefinition pathDefinition) {
            Iterator it = (Iterator) this.names;
            while (true) {
                Map.Entry entry = (Map.Entry) this.values;
                if (entry == null || ((GeneratedMessageLite.ExtensionDescriptor) entry.getKey()).number >= i) {
                    return;
                }
                GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor) ((Map.Entry) this.values).getKey();
                Object value = ((Map.Entry) this.values).getValue();
                FieldSet fieldSet = FieldSet.DEFAULT_INSTANCE;
                WireFormat$FieldType wireFormat$FieldType = extensionDescriptor.type;
                int i2 = extensionDescriptor.number;
                if (extensionDescriptor.isRepeated) {
                    for (Object obj : (List) value) {
                        if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                            pathDefinition.writeTag(i2, 3);
                            ((AbstractMessageLite) obj).writeTo(pathDefinition);
                            pathDefinition.writeTag(i2, 4);
                        } else {
                            pathDefinition.writeTag(i2, wireFormat$FieldType.getWireType());
                            FieldSet.writeElementNoTag(pathDefinition, wireFormat$FieldType, obj);
                        }
                    }
                } else if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
                    pathDefinition.writeTag(i2, 3);
                    ((AbstractMessageLite) value).writeTo(pathDefinition);
                    pathDefinition.writeTag(i2, 4);
                } else {
                    pathDefinition.writeTag(i2, wireFormat$FieldType.getWireType());
                    FieldSet.writeElementNoTag(pathDefinition, wireFormat$FieldType, value);
                }
                if (it.hasNext()) {
                    this.values = (Map.Entry) it.next();
                } else {
                    this.values = null;
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public KotlinTypeMarker withNullability(KotlinTypeMarker kotlinTypeMarker) {
            return UtilsKt.withNullability(this, kotlinTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeVariance getVariance(TypeProjectionBase typeProjectionBase) {
            return UtilsKt.getVariance(typeProjectionBase);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeConstructor typeConstructor(SimpleTypeMarker simpleTypeMarker) {
            return UtilsKt.typeConstructor(simpleTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public NewCapturedTypeConstructor typeConstructor(CapturedTypeMarker capturedTypeMarker) {
            return UtilsKt.typeConstructor(capturedTypeMarker);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public void fastCorrespondingSupertypes(SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        }

        public void append(String str) {
            StringBuilder sb = (StringBuilder) this.values;
            if (sb != null) {
                sb.append(str);
                return;
            }
            if (((String) this.names) != null) {
                StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                this.values = borrowBuilder;
                borrowBuilder.append((String) this.names);
                this.names = null;
                ((StringBuilder) this.values).append(str);
                return;
            }
            this.names = str;
        }

        public /* synthetic */ Builder(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.names = obj;
            this.values = obj2;
        }

        public /* synthetic */ Builder(int i, boolean z) {
            this.$r8$classId = i;
        }

        public Builder(ProtoBuf$StringTable protoBuf$StringTable, ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            this.$r8$classId = 10;
            protoBuf$StringTable.getClass();
            protoBuf$QualifiedNameTable.getClass();
            this.names = protoBuf$StringTable;
            this.values = protoBuf$QualifiedNameTable;
        }

        public Builder(HashMap hashMap, KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality) {
            this.$r8$classId = 12;
            typeConstructorEquality.getClass();
            this.names = hashMap;
            this.values = typeConstructorEquality;
        }

        public Builder(Transition.AnonymousClass1 anonymousClass1) {
            this.$r8$classId = 17;
            LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Type parameter upper bound erasure results");
            this.names = new SynchronizedLazyImpl(new AndroidLeakFixes$Companion$onDecorViewReady$1(20, this));
            this.values = lockBasedStorageManager.createMemoizedFunction(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(25, this));
        }

        public Builder(Builder builder) {
            this.$r8$classId = 27;
            this.names = builder;
        }

        public Builder(Object obj) {
            this.$r8$classId = 15;
            this.names = obj;
            this.values = Thread.currentThread();
        }

        public Builder(Context context) {
            this.$r8$classId = 28;
            this.values = "passive";
            this.names = (LocationManager) context.getSystemService("location");
        }

        public Builder(Supplier supplier) {
            this.$r8$classId = 24;
            this.values = supplier;
            final Entities$$ExternalSyntheticLambda0 entities$$ExternalSyntheticLambda0 = new Entities$$ExternalSyntheticLambda0(1);
            this.names = new ThreadLocal() { // from class: org.jsoup.internal.SoftPool$$ExternalSyntheticThreadLocal1
                @Override // java.lang.ThreadLocal
                public final /* synthetic */ Object initialValue() {
                    return Entities$$ExternalSyntheticLambda0.this.get();
                }
            };
        }

        public Builder(ModuleDescriptor moduleDescriptor, ImageLoader$Builder imageLoader$Builder, BuiltInSerializerProtocol builtInSerializerProtocol) {
            this.$r8$classId = 13;
            moduleDescriptor.getClass();
            builtInSerializerProtocol.getClass();
            this.names = builtInSerializerProtocol;
            this.values = new Builder(moduleDescriptor, imageLoader$Builder);
        }

        public Builder(ModuleDescriptor moduleDescriptor, ImageLoader$Builder imageLoader$Builder) {
            this.$r8$classId = 14;
            moduleDescriptor.getClass();
            imageLoader$Builder.getClass();
            this.names = moduleDescriptor;
            this.values = imageLoader$Builder;
        }

        public Builder(int i) {
            this.$r8$classId = i;
            switch (i) {
                case LAZY_VERTICAL_GRID_VALUE:
                    this.names = new ConcurrentHashMap();
                    this.values = new AtomicInteger(0);
                    break;
                default:
                    this.names = new ArrayList();
                    this.values = new ArrayList();
                    break;
            }
        }

        public Builder(SVGAndroidRenderer sVGAndroidRenderer, HashMap hashMap, HashMap hashMap2) {
            this.$r8$classId = 8;
            this.names = sVGAndroidRenderer;
            this.values = hashMap;
        }

        public Builder(Map map) {
            this.$r8$classId = 6;
            this.names = map;
            this.values = new LockBasedStorageManager("Java nullability annotation states").createMemoizedFunctionWithNullableValues(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(8, this));
        }

        public Builder(Function2 function2) {
            this.$r8$classId = 19;
            this.names = function2;
            this.values = new ConcurrentHashMap();
        }

        public /* synthetic */ Builder(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.values = obj;
            this.names = obj2;
        }

        public Builder(BufferedChannel bufferedChannel, BufferedChannel$$ExternalSyntheticLambda0 bufferedChannel$$ExternalSyntheticLambda0) {
            this.$r8$classId = 18;
            BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.INSTANCE;
            BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.INSTANCE;
            this.names = bufferedChannel;
            this.values = bufferedChannel$$ExternalSyntheticLambda0;
        }

        public Builder(GeneratedMessageLite.ExtendableMessage extendableMessage) {
            this.$r8$classId = 11;
            FieldSet fieldSet = extendableMessage.extensions;
            fieldSet.getClass();
            Iterator it = ((ArrayMap.EntrySet) fieldSet.fields.entrySet()).iterator();
            this.names = it;
            if (it.hasNext()) {
                this.values = (Map.Entry) it.next();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext
        public TypeProjectionBase get(TypeArgumentListMarker typeArgumentListMarker, int i) {
            typeArgumentListMarker.getClass();
            if (typeArgumentListMarker instanceof SimpleTypeMarker) {
                return UtilsKt.getArgument((KotlinTypeMarker) typeArgumentListMarker, i);
            }
            if (typeArgumentListMarker instanceof ArgumentList) {
                E e = ((ArgumentList) typeArgumentListMarker).get(i);
                e.getClass();
                return (TypeProjectionBase) e;
            }
            StringBuilder sb = new StringBuilder("unknown type argument list type: ");
            sb.append(typeArgumentListMarker);
            Gson$$ExternalSyntheticBUOutline0.m(sb, ", ", Reflection.factory.getOrCreateKotlinClass(typeArgumentListMarker.getClass()));
            return null;
        }
    }
}
