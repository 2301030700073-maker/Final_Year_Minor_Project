package com.google.gson;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.room.Room;
import androidx.work.Configuration;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.hcaptcha.sdk.HCaptcha;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.reflect.jvm.internal.impl.SpecialJvmAnnotations;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ErrorValue$ErrorValueWithMessage;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeAliasDescriptors$1;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.AnnotationsTypeAttribute;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import okhttp3.Request;
import okio.internal.DefaultSocket;
import org.maplibre.geojson.BoundingBox;
import org.maplibre.geojson.gson.BoundingBoxTypeAdapter;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActionTabLayout;
import org.wikipedia.page.PageBackStackItem;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.page.leadimages.PageHeaderView;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GsonBuilder implements KotlinJvmBinaryClass$AnnotationArgumentVisitor {
    public final /* synthetic */ int $r8$classId;
    public Object excluder;
    public Object factories;
    public Object fieldNamingPolicy;
    public Object hierarchyFactories;
    public Object instanceCreators;
    public Object longSerializationPolicy;
    public Object reflectionFilters;

    public GsonBuilder(HCaptcha hCaptcha, GsonBuilder gsonBuilder, List list, String str, String str2) {
        Map linkedHashMap;
        this.$r8$classId = 5;
        list.getClass();
        this.excluder = hCaptcha;
        this.longSerializationPolicy = gsonBuilder;
        this.fieldNamingPolicy = str;
        this.instanceCreators = str2;
        LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityGalleryBinding) hCaptcha.result).captionEditButton;
        this.factories = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new TypeDeserializer$typeAliasDescriptors$1(this, 1));
        int i = 0;
        this.hierarchyFactories = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new TypeDeserializer$typeAliasDescriptors$1(this, i));
        if (list.isEmpty()) {
            linkedHashMap = EmptyMap.INSTANCE;
        } else {
            linkedHashMap = new LinkedHashMap();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ProtoBuf$TypeParameter protoBuf$TypeParameter = (ProtoBuf$TypeParameter) it.next();
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.id_), new DeserializedTypeParameterDescriptor((HCaptcha) this.excluder, protoBuf$TypeParameter, i));
                i++;
            }
        }
        this.reflectionFilters = linkedHashMap;
    }

    public static SimpleType createSimpleSuspendFunctionType(SimpleType simpleType, KotlinType kotlinType) {
        KotlinBuiltIns builtIns = OperationKt.getBuiltIns(simpleType);
        Annotations annotations = simpleType.getAnnotations();
        KotlinType receiverTypeFromFunctionType = ContextsKt.getReceiverTypeFromFunctionType(simpleType);
        List contextReceiverTypesFromFunctionType = ContextsKt.getContextReceiverTypesFromFunctionType(simpleType);
        List dropLast = CollectionsKt.dropLast(ContextsKt.getValueParameterTypesFromFunctionType(simpleType));
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(dropLast, 10));
        Iterator it = dropLast.iterator();
        while (it.hasNext()) {
            arrayList.add(((TypeProjectionBase) it.next()).getType());
        }
        return ContextsKt.createFunctionType(builtIns, annotations, receiverTypeFromFunctionType, contextReceiverTypesFromFunctionType, arrayList, kotlinType, true).makeNullableAsSpecified(simpleType.isMarkedNullable());
    }

    public static final ArrayList simpleType$collectAllArguments(ProtoBuf$Type protoBuf$Type, GsonBuilder gsonBuilder) {
        List list = protoBuf$Type.argument_;
        list.getClass();
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) ((HCaptcha) gsonBuilder.excluder).onFailureListeners;
        int i = protoBuf$Type.bitField0_;
        ProtoBuf$Type protoBuf$Type2 = (i & 256) == 256 ? protoBuf$Type.outerType_ : (i & 512) == 512 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$Type.outerTypeId_) : null;
        Iterable simpleType$collectAllArguments = protoBuf$Type2 != null ? simpleType$collectAllArguments(protoBuf$Type2, gsonBuilder) : null;
        if (simpleType$collectAllArguments == null) {
            simpleType$collectAllArguments = EmptyList.INSTANCE;
        }
        return CollectionsKt.plus((Collection) list, simpleType$collectAllArguments);
    }

    public static TypeAttributes toAttributes(List list, Annotations annotations) {
        TypeAttributes create;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DefaultTypeAttributeTranslator) it.next()).getClass();
            if (annotations.isEmpty()) {
                TypeAttributes.Companion.getClass();
                create = TypeAttributes.Empty;
            } else {
                FormBody.Builder builder = TypeAttributes.Companion;
                List listOf = Room.listOf(new AnnotationsTypeAttribute(annotations));
                builder.getClass();
                create = FormBody.Builder.create(listOf);
            }
            arrayList.add(create);
        }
        ArrayList flatten = CollectionsKt__IteratorsJVMKt.flatten(arrayList);
        TypeAttributes.Companion.getClass();
        return FormBody.Builder.create(flatten);
    }

    public static final ModuleAwareClassDescriptor typeConstructor$notFoundClass(GsonBuilder gsonBuilder, ProtoBuf$Type protoBuf$Type, int i) {
        HCaptcha hCaptcha = (HCaptcha) gsonBuilder.excluder;
        ClassId classId = Room.getClassId((NameResolver) hCaptcha.hCaptchaException, i);
        Sequence<ProtoBuf$Type> generateSequence = SequencesKt.generateSequence(protoBuf$Type, new TypeDeserializer$typeAliasDescriptors$1(gsonBuilder, 2));
        ArrayList arrayList = new ArrayList();
        for (ProtoBuf$Type protoBuf$Type2 : generateSequence) {
            protoBuf$Type2.getClass();
            arrayList.add(Integer.valueOf(protoBuf$Type2.argument_.size()));
        }
        int count = SequencesKt.count(SequencesKt.generateSequence(classId, TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1.INSTANCE));
        while (arrayList.size() < count) {
            arrayList.add(0);
        }
        return ((ImageLoader$Builder) ((ActivityGalleryBinding) hCaptcha.result).ctaButtonText).getClass(classId, arrayList);
    }

    public Gson create() {
        ArrayList arrayList = (ArrayList) this.factories;
        int size = arrayList.size();
        ArrayList arrayList2 = (ArrayList) this.hierarchyFactories;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z = SqlTypesSupport.SUPPORTS_SQL_TYPES;
        Excluder excluder = (Excluder) this.excluder;
        FieldNamingPolicy fieldNamingPolicy = (FieldNamingPolicy) this.fieldNamingPolicy;
        HashMap hashMap = new HashMap((HashMap) this.instanceCreators);
        LongSerializationPolicy longSerializationPolicy = (LongSerializationPolicy) this.longSerializationPolicy;
        new ArrayList(arrayList);
        new ArrayList(arrayList2);
        return new Gson(excluder, fieldNamingPolicy, hashMap, longSerializationPolicy, arrayList3, new ArrayList((LinkedList) this.reflectionFilters));
    }

    public List getOwnTypeParameters() {
        return CollectionsKt.toList(((Map) this.reflectionFilters).values());
    }

    public void loadFromBackStack() {
        if (((Tab) this.hierarchyFactories).backStack.isEmpty()) {
            return;
        }
        Tab tab = (Tab) this.hierarchyFactories;
        PageBackStackItem pageBackStackItem = (PageBackStackItem) tab.backStack.get(tab.getBackStackPosition());
        PageFragment pageFragment = (PageFragment) this.longSerializationPolicy;
        PageTitle pageTitle = pageBackStackItem.title;
        HistoryEntry historyEntry = pageBackStackItem.historyEntry;
        int i = pageBackStackItem.scrollY;
        int i2 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
        pageFragment.loadPage(pageTitle, historyEntry, false, i, false);
        L.d("Loaded page " + pageBackStackItem.title.getDisplayText() + " from backstack");
    }

    public TypeParameterDescriptor loadTypeParameter(int i) {
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) ((Map) this.reflectionFilters).get(Integer.valueOf(i));
        if (typeParameterDescriptor != null) {
            return typeParameterDescriptor;
        }
        GsonBuilder gsonBuilder = (GsonBuilder) this.longSerializationPolicy;
        if (gsonBuilder != null) {
            return gsonBuilder.loadTypeParameter(i);
        }
        return null;
    }

    public void registerTypeAdapter(BoundingBoxTypeAdapter boundingBoxTypeAdapter) {
        TypeToken typeToken = new TypeToken(BoundingBox.class);
        TypeAdapters.AnonymousClass31 anonymousClass31 = TypeAdapters.CLASS_FACTORY;
        ((ArrayList) this.factories).add(new TypeAdapters.AnonymousClass31(typeToken, boundingBoxTypeAdapter, 2));
    }

    public void registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeAdapterFactory);
        ((ArrayList) this.factories).add(typeAdapterFactory);
    }

    public boolean setTab(Tab tab) {
        tab.getClass();
        boolean z = !(tab == ((Tab) this.hierarchyFactories));
        this.hierarchyFactories = tab;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.reflect.jvm.internal.impl.types.SimpleType simpleType(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.GsonBuilder.simpleType(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type, boolean):kotlin.reflect.jvm.internal.impl.types.SimpleType");
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                String str = (String) this.fieldNamingPolicy;
                GsonBuilder gsonBuilder = (GsonBuilder) this.longSerializationPolicy;
                return str.concat(gsonBuilder == null ? "" : ". Child of ".concat((String) gsonBuilder.fieldNamingPolicy));
            default:
                return super.toString();
        }
    }

    public KotlinType type(ProtoBuf$Type protoBuf$Type) {
        HCaptcha hCaptcha = (HCaptcha) this.excluder;
        protoBuf$Type.getClass();
        if ((protoBuf$Type.bitField0_ & 2) != 2) {
            return simpleType(protoBuf$Type, true);
        }
        String string = ((NameResolver) hCaptcha.hCaptchaException).getString(protoBuf$Type.flexibleTypeCapabilitiesId_);
        SimpleType simpleType = simpleType(protoBuf$Type, true);
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) hCaptcha.onFailureListeners;
        int i = protoBuf$Type.bitField0_;
        ProtoBuf$Type protoBuf$Type2 = (i & 4) == 4 ? protoBuf$Type.flexibleUpperBound_ : (i & 8) == 8 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$Type.flexibleUpperBoundId_) : null;
        protoBuf$Type2.getClass();
        return ((FlexibleTypeDeserializer) ((ActivityGalleryBinding) hCaptcha.result).infoContainer).create(protoBuf$Type, string, simpleType, simpleType(protoBuf$Type2, true));
    }

    public void updateCurrentBackStackItem() {
        if (((Tab) this.hierarchyFactories).backStack.isEmpty()) {
            return;
        }
        Tab tab = (Tab) this.hierarchyFactories;
        PageBackStackItem pageBackStackItem = (PageBackStackItem) tab.backStack.get(tab.getBackStackPosition());
        pageBackStackItem.scrollY = ((ObservableWebView) this.fieldNamingPolicy).getScrollY();
        PageTitle pageTitle = (PageTitle) ((PageViewModel) this.excluder).title;
        if (pageTitle != null) {
            PageTitle pageTitle2 = pageBackStackItem.title;
            pageTitle2.description = pageTitle.description;
            pageTitle2.thumbUrl = pageTitle.thumbUrl;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visit(Name name, Object obj) {
        ConstantValue createConstantValue = ConstantValueFactory.createConstantValue(obj, (ModuleDescriptorImpl) ((SVGAndroidRenderer) this.excluder).state);
        if (createConstantValue == null) {
            createConstantValue = new ErrorValue$ErrorValueWithMessage("Unsupported annotation argument: " + name);
        }
        ((HashMap) this.instanceCreators).put(name, createConstantValue);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, Name name) {
        ArrayList arrayList = new ArrayList();
        GsonBuilder loadAnnotation = ((SVGAndroidRenderer) this.excluder).loadAnnotation(classId, SourceElement.NO_SOURCE, arrayList);
        Request.Builder builder = new Request.Builder();
        builder.method = loadAnnotation;
        builder.headers = this;
        builder.body = name;
        builder.tags = arrayList;
        builder.url = loadAnnotation;
        return builder;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray(Name name) {
        return new DefaultSocket((SVGAndroidRenderer) this.excluder, name, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitClassLiteral(Name name, ClassLiteralValue classLiteralValue) {
        ((HashMap) this.instanceCreators).put(name, new KClassValue(new KClassValue.Value.NormalClass(classLiteralValue)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitEnd() {
        SVGAndroidRenderer sVGAndroidRenderer = (SVGAndroidRenderer) this.longSerializationPolicy;
        ClassId classId = (ClassId) this.factories;
        HashMap hashMap = (HashMap) this.instanceCreators;
        boolean z = false;
        if (classId.equals(SpecialJvmAnnotations.JAVA_LANG_ANNOTATION_REPEATABLE)) {
            Object obj = hashMap.get(Name.identifier("value"));
            KClassValue kClassValue = obj instanceof KClassValue ? (KClassValue) obj : null;
            if (kClassValue != null) {
                Object obj2 = kClassValue.value;
                KClassValue.Value.NormalClass normalClass = obj2 instanceof KClassValue.Value.NormalClass ? (KClassValue.Value.NormalClass) obj2 : null;
                if (normalClass != null) {
                    z = sVGAndroidRenderer.isImplicitRepeatableContainer(normalClass.value.classId);
                }
            }
        }
        if (z || sVGAndroidRenderer.isImplicitRepeatableContainer(classId)) {
            return;
        }
        ((List) this.hierarchyFactories).add(new AnnotationDescriptorImpl(((ModuleAwareClassDescriptor) this.fieldNamingPolicy).getDefaultType(), hashMap, (SourceElement) this.reflectionFilters));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitEnum(Name name, ClassId classId, Name name2) {
        ((HashMap) this.instanceCreators).put(name, new EnumValue(classId, name2));
    }

    public /* synthetic */ GsonBuilder(ViewGroup viewGroup, View view, TextView textView, ViewGroup viewGroup2, View view2, ViewGroup viewGroup3, ViewGroup viewGroup4, View view3, int i) {
        this.$r8$classId = i;
        this.excluder = view;
        this.longSerializationPolicy = textView;
        this.fieldNamingPolicy = viewGroup2;
        this.instanceCreators = view2;
        this.factories = viewGroup3;
        this.hierarchyFactories = viewGroup4;
        this.reflectionFilters = view3;
    }

    public /* synthetic */ GsonBuilder(ViewGroup viewGroup, View view, View view2, View view3, View view4, View view5, View view6, int i) {
        this.$r8$classId = i;
        this.excluder = viewGroup;
        this.longSerializationPolicy = view;
        this.fieldNamingPolicy = view2;
        this.instanceCreators = view3;
        this.factories = view4;
        this.hierarchyFactories = view5;
        this.reflectionFilters = view6;
    }

    public GsonBuilder(Context context) {
        this.$r8$classId = 1;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.instanceCreators = layoutParams;
        this.factories = new Rect();
        this.hierarchyFactories = new int[2];
        this.reflectionFilters = new int[2];
        this.excluder = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.longSerializationPolicy = inflate;
        this.fieldNamingPolicy = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle("TooltipPopup");
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public GsonBuilder(WikiSwipeRefreshLayout wikiSwipeRefreshLayout, FrameLayout frameLayout, PageActionTabLayout pageActionTabLayout, WikiErrorView wikiErrorView, PageHeaderView pageHeaderView, ImageView imageView, WikiSwipeRefreshLayout wikiSwipeRefreshLayout2, ObservableWebView observableWebView) {
        this.$r8$classId = 12;
        this.excluder = wikiSwipeRefreshLayout;
        this.longSerializationPolicy = frameLayout;
        this.fieldNamingPolicy = pageActionTabLayout;
        this.instanceCreators = wikiErrorView;
        this.factories = pageHeaderView;
        this.hierarchyFactories = imageView;
        this.reflectionFilters = wikiSwipeRefreshLayout2;
    }

    public GsonBuilder(int i) {
        this.$r8$classId = i;
        switch (i) {
            case IMAGE_VALUE:
                break;
            default:
                this.excluder = Excluder.DEFAULT;
                this.longSerializationPolicy = LongSerializationPolicy.DEFAULT;
                this.fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
                this.instanceCreators = new HashMap();
                this.factories = new ArrayList();
                this.hierarchyFactories = new ArrayList();
                ToNumberPolicy toNumberPolicy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
                this.reflectionFilters = new LinkedList();
                break;
        }
    }

    public GsonBuilder(SVGAndroidRenderer sVGAndroidRenderer, ModuleAwareClassDescriptor moduleAwareClassDescriptor, ClassId classId, List list, SourceElement sourceElement) {
        this.$r8$classId = 4;
        this.longSerializationPolicy = sVGAndroidRenderer;
        this.fieldNamingPolicy = moduleAwareClassDescriptor;
        this.factories = classId;
        this.hierarchyFactories = list;
        this.reflectionFilters = sourceElement;
        this.excluder = sVGAndroidRenderer;
        this.instanceCreators = new HashMap();
    }

    public GsonBuilder(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, Processor processor, WorkDatabase workDatabase, WorkSpec workSpec, ArrayList arrayList) {
        this.$r8$classId = 2;
        context.getClass();
        processor.getClass();
        this.excluder = configuration;
        this.longSerializationPolicy = workManagerTaskExecutor;
        this.fieldNamingPolicy = processor;
        this.instanceCreators = workDatabase;
        this.hierarchyFactories = workSpec;
        this.factories = arrayList;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.reflectionFilters = applicationContext;
        new SystemClock();
    }
}
