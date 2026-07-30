package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.NullableLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes2.dex */
public abstract class DeserializedMemberScope extends MemberScopeImpl {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    private final DeserializationContext c;
    private final NotNullLazyValue classNames$delegate;
    private final NullableLazyValue classifierNamesLazy$delegate;
    private final Implementation impl;

    /* compiled from: DeserializedMemberScope.kt */
    private interface Implementation {
        void addFunctionsAndPropertiesTo(Collection collection, DescriptorKindFilter descriptorKindFilter, Function1 function1, LookupLocation lookupLocation);

        Collection getContributedFunctions(Name name, LookupLocation lookupLocation);

        Collection getContributedVariables(Name name, LookupLocation lookupLocation);

        Set getFunctionNames();

        TypeAliasDescriptor getTypeAliasByName(Name name);

        Set getTypeAliasNames();

        Set getVariableNames();
    }

    protected abstract void addEnumEntryDescriptors(Collection collection, Function1 function1);

    protected void computeNonDeclaredFunctions(Name name, List functions) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(functions, "functions");
    }

    protected void computeNonDeclaredProperties(Name name, List descriptors) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(descriptors, "descriptors");
    }

    protected abstract ClassId createClassId(Name name);

    protected abstract Set getNonDeclaredClassifierNames();

    protected abstract Set getNonDeclaredFunctionNames();

    protected abstract Set getNonDeclaredVariableNames();

    protected boolean isDeclaredFunctionAvailable(SimpleFunctionDescriptor function) {
        Intrinsics.checkNotNullParameter(function, "function");
        return true;
    }

    protected final DeserializationContext getC() {
        return this.c;
    }

    protected DeserializedMemberScope(DeserializationContext c, List functionList, List propertyList, List typeAliasList, final Function0 classNames) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(functionList, "functionList");
        Intrinsics.checkNotNullParameter(propertyList, "propertyList");
        Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
        Intrinsics.checkNotNullParameter(classNames, "classNames");
        this.c = c;
        this.impl = createImplementation(functionList, propertyList, typeAliasList);
        this.classNames$delegate = c.getStorageManager().createLazyValue(new Function0(classNames) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$$Lambda$0
            private final Function0 arg$0;

            {
                this.arg$0 = classNames;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Set classNames_delegate$lambda$0;
                classNames_delegate$lambda$0 = DeserializedMemberScope.classNames_delegate$lambda$0(this.arg$0);
                return classNames_delegate$lambda$0;
            }
        });
        this.classifierNamesLazy$delegate = c.getStorageManager().createNullableLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$$Lambda$1
            private final DeserializedMemberScope arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                Set classifierNamesLazy_delegate$lambda$1;
                classifierNamesLazy_delegate$lambda$1 = DeserializedMemberScope.classifierNamesLazy_delegate$lambda$1(this.arg$0);
                return classifierNamesLazy_delegate$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set classNames_delegate$lambda$0(Function0 function0) {
        return CollectionsKt.toSet((Iterable) function0.invoke());
    }

    public final Set getClassNames$deserialization() {
        return (Set) StorageKt.getValue(this.classNames$delegate, this, $$delegatedProperties[0]);
    }

    private final Set getClassifierNamesLazy() {
        return (Set) StorageKt.getValue(this.classifierNamesLazy$delegate, this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set classifierNamesLazy_delegate$lambda$1(DeserializedMemberScope deserializedMemberScope) {
        Set nonDeclaredClassifierNames = deserializedMemberScope.getNonDeclaredClassifierNames();
        if (nonDeclaredClassifierNames == null) {
            return null;
        }
        return SetsKt.plus(SetsKt.plus(deserializedMemberScope.getClassNames$deserialization(), (Iterable) deserializedMemberScope.impl.getTypeAliasNames()), (Iterable) nonDeclaredClassifierNames);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getFunctionNames() {
        return this.impl.getFunctionNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getVariableNames() {
        return this.impl.getVariableNames();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set getClassifierNames() {
        return getClassifierNamesLazy();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedFunctions(Name name, LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return this.impl.getContributedFunctions(name, location);
    }

    private final TypeAliasDescriptor getTypeAliasByName(Name name) {
        return this.impl.getTypeAliasByName(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection getContributedVariables(Name name, LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        return this.impl.getContributedVariables(name, location);
    }

    protected final Collection computeDescriptors(DescriptorKindFilter kindFilter, Function1 nameFilter, LookupLocation location) {
        Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        Intrinsics.checkNotNullParameter(location, "location");
        ArrayList arrayList = new ArrayList(0);
        DescriptorKindFilter.Companion companion = DescriptorKindFilter.Companion;
        if (kindFilter.acceptsKinds(companion.getSINGLETON_CLASSIFIERS_MASK())) {
            addEnumEntryDescriptors(arrayList, nameFilter);
        }
        this.impl.addFunctionsAndPropertiesTo(arrayList, kindFilter, nameFilter, location);
        if (kindFilter.acceptsKinds(companion.getCLASSIFIERS_MASK())) {
            for (Name name : getClassNames$deserialization()) {
                if (((Boolean) nameFilter.invoke(name)).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.addIfNotNull(arrayList, deserializeClass(name));
                }
            }
        }
        if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getTYPE_ALIASES_MASK())) {
            for (Name name2 : this.impl.getTypeAliasNames()) {
                if (((Boolean) nameFilter.invoke(name2)).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.addIfNotNull(arrayList, this.impl.getTypeAliasByName(name2));
                }
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    /* renamed from: getContributedClassifier */
    public ClassifierDescriptor mo2791getContributedClassifier(Name name, LookupLocation location) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(location, "location");
        if (hasClass(name)) {
            return deserializeClass(name);
        }
        if (this.impl.getTypeAliasNames().contains(name)) {
            return getTypeAliasByName(name);
        }
        return null;
    }

    private final ClassDescriptor deserializeClass(Name name) {
        return this.c.getComponents().deserializeClass(createClassId(name));
    }

    protected boolean hasClass(Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return getClassNames$deserialization().contains(name);
    }

    private final Implementation createImplementation(List list, List list2, List list3) {
        if (this.c.getComponents().getConfiguration().getPreserveDeclarationsOrdering()) {
            return new NoReorderImplementation(this, list, list2, list3);
        }
        return new OptimizedImplementation(this, list, list2, list3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedMemberScope.kt */
    final class OptimizedImplementation implements Implementation {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(OptimizedImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(OptimizedImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        private final NotNullLazyValue functionNames$delegate;
        private final Map functionProtosBytes;
        private final MemoizedFunctionToNotNull functions;
        private final MemoizedFunctionToNotNull properties;
        private final Map propertyProtosBytes;
        final /* synthetic */ DeserializedMemberScope this$0;
        private final MemoizedFunctionToNullable typeAliasByName;
        private final Map typeAliasBytes;
        private final NotNullLazyValue variableNames$delegate;

        public OptimizedImplementation(DeserializedMemberScope deserializedMemberScope, List functionList, List propertyList, List typeAliasList) {
            Map emptyMap;
            Intrinsics.checkNotNullParameter(functionList, "functionList");
            Intrinsics.checkNotNullParameter(propertyList, "propertyList");
            Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
            this.this$0 = deserializedMemberScope;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : functionList) {
                Name name = NameResolverUtilKt.getName(deserializedMemberScope.getC().getNameResolver(), ((ProtoBuf$Function) ((MessageLite) obj)).getName());
                Object obj2 = linkedHashMap.get(name);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(name, obj2);
                }
                ((List) obj2).add(obj);
            }
            this.functionProtosBytes = packToByteArray(linkedHashMap);
            DeserializedMemberScope deserializedMemberScope2 = this.this$0;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : propertyList) {
                Name name2 = NameResolverUtilKt.getName(deserializedMemberScope2.getC().getNameResolver(), ((ProtoBuf$Property) ((MessageLite) obj3)).getName());
                Object obj4 = linkedHashMap2.get(name2);
                if (obj4 == null) {
                    obj4 = new ArrayList();
                    linkedHashMap2.put(name2, obj4);
                }
                ((List) obj4).add(obj3);
            }
            this.propertyProtosBytes = packToByteArray(linkedHashMap2);
            if (this.this$0.getC().getComponents().getConfiguration().getTypeAliasesAllowed()) {
                DeserializedMemberScope deserializedMemberScope3 = this.this$0;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj5 : typeAliasList) {
                    Name name3 = NameResolverUtilKt.getName(deserializedMemberScope3.getC().getNameResolver(), ((ProtoBuf$TypeAlias) ((MessageLite) obj5)).getName());
                    Object obj6 = linkedHashMap3.get(name3);
                    if (obj6 == null) {
                        obj6 = new ArrayList();
                        linkedHashMap3.put(name3, obj6);
                    }
                    ((List) obj6).add(obj5);
                }
                emptyMap = packToByteArray(linkedHashMap3);
            } else {
                emptyMap = MapsKt.emptyMap();
            }
            this.typeAliasBytes = emptyMap;
            this.functions = this.this$0.getC().getStorageManager().createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$0
                private final DeserializedMemberScope.OptimizedImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public Object invoke(Object obj7) {
                    Collection functions$lambda$5;
                    functions$lambda$5 = DeserializedMemberScope.OptimizedImplementation.functions$lambda$5(this.arg$0, (Name) obj7);
                    return functions$lambda$5;
                }
            });
            this.properties = this.this$0.getC().getStorageManager().createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$1
                private final DeserializedMemberScope.OptimizedImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public Object invoke(Object obj7) {
                    Collection properties$lambda$6;
                    properties$lambda$6 = DeserializedMemberScope.OptimizedImplementation.properties$lambda$6(this.arg$0, (Name) obj7);
                    return properties$lambda$6;
                }
            });
            this.typeAliasByName = this.this$0.getC().getStorageManager().createMemoizedFunctionWithNullableValues(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$2
                private final DeserializedMemberScope.OptimizedImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public Object invoke(Object obj7) {
                    TypeAliasDescriptor typeAliasByName$lambda$7;
                    typeAliasByName$lambda$7 = DeserializedMemberScope.OptimizedImplementation.typeAliasByName$lambda$7(this.arg$0, (Name) obj7);
                    return typeAliasByName$lambda$7;
                }
            });
            StorageManager storageManager = this.this$0.getC().getStorageManager();
            final DeserializedMemberScope deserializedMemberScope4 = this.this$0;
            this.functionNames$delegate = storageManager.createLazyValue(new Function0(this, deserializedMemberScope4) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$3
                private final DeserializedMemberScope.OptimizedImplementation arg$0;
                private final DeserializedMemberScope arg$1;

                {
                    this.arg$0 = this;
                    this.arg$1 = deserializedMemberScope4;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Set functionNames_delegate$lambda$8;
                    functionNames_delegate$lambda$8 = DeserializedMemberScope.OptimizedImplementation.functionNames_delegate$lambda$8(this.arg$0, this.arg$1);
                    return functionNames_delegate$lambda$8;
                }
            });
            StorageManager storageManager2 = this.this$0.getC().getStorageManager();
            final DeserializedMemberScope deserializedMemberScope5 = this.this$0;
            this.variableNames$delegate = storageManager2.createLazyValue(new Function0(this, deserializedMemberScope5) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$$Lambda$4
                private final DeserializedMemberScope.OptimizedImplementation arg$0;
                private final DeserializedMemberScope arg$1;

                {
                    this.arg$0 = this;
                    this.arg$1 = deserializedMemberScope5;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Set variableNames_delegate$lambda$9;
                    variableNames_delegate$lambda$9 = DeserializedMemberScope.OptimizedImplementation.variableNames_delegate$lambda$9(this.arg$0, this.arg$1);
                    return variableNames_delegate$lambda$9;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Collection functions$lambda$5(OptimizedImplementation optimizedImplementation, Name it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return optimizedImplementation.computeFunctions(it);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Collection properties$lambda$6(OptimizedImplementation optimizedImplementation, Name it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return optimizedImplementation.computeProperties(it);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final TypeAliasDescriptor typeAliasByName$lambda$7(OptimizedImplementation optimizedImplementation, Name it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return optimizedImplementation.createTypeAlias(it);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getFunctionNames() {
            return (Set) StorageKt.getValue(this.functionNames$delegate, this, $$delegatedProperties[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Set functionNames_delegate$lambda$8(OptimizedImplementation optimizedImplementation, DeserializedMemberScope deserializedMemberScope) {
            return SetsKt.plus(optimizedImplementation.functionProtosBytes.keySet(), (Iterable) deserializedMemberScope.getNonDeclaredFunctionNames());
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getVariableNames() {
            return (Set) StorageKt.getValue(this.variableNames$delegate, this, $$delegatedProperties[1]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Set variableNames_delegate$lambda$9(OptimizedImplementation optimizedImplementation, DeserializedMemberScope deserializedMemberScope) {
            return SetsKt.plus(optimizedImplementation.propertyProtosBytes.keySet(), (Iterable) deserializedMemberScope.getNonDeclaredVariableNames());
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getTypeAliasNames() {
            return this.typeAliasBytes.keySet();
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0027, code lost:
        
            if (r0 != null) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.Collection computeFunctions(kotlin.reflect.jvm.internal.impl.name.Name r6) {
            /*
                r5 = this;
                java.util.Map r0 = r5.functionProtosBytes
                kotlin.reflect.jvm.internal.impl.protobuf.Parser r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function.PARSER
                java.lang.String r2 = "PARSER"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r2 = r5.this$0
                java.lang.Object r0 = r0.get(r6)
                byte[] r0 = (byte[]) r0
                if (r0 == 0) goto L2a
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r3 = r5.this$0
                java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream
                r4.<init>(r0)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1 r0 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1
                r0.<init>(r1, r4, r3)
                kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.generateSequence(r0)
                java.util.List r0 = kotlin.sequences.SequencesKt.toList(r0)
                if (r0 == 0) goto L2a
                goto L2e
            L2a:
                java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            L2e:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = r0.size()
                r1.<init>(r3)
                java.util.Iterator r0 = r0.iterator()
            L3b:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L64
                java.lang.Object r3 = r0.next()
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function) r3
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r4 = r2.getC()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer r4 = r4.getMemberDeserializer()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor r3 = r4.loadFunction(r3)
                boolean r4 = r2.isDeclaredFunctionAvailable(r3)
                if (r4 == 0) goto L5d
                goto L5e
            L5d:
                r3 = 0
            L5e:
                if (r3 == 0) goto L3b
                r1.add(r3)
                goto L3b
            L64:
                r2.computeNonDeclaredFunctions(r6, r1)
                java.util.List r6 = kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(r1)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.OptimizedImplementation.computeFunctions(kotlin.reflect.jvm.internal.impl.name.Name):java.util.Collection");
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0027, code lost:
        
            if (r0 != null) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.Collection computeProperties(kotlin.reflect.jvm.internal.impl.name.Name r6) {
            /*
                r5 = this;
                java.util.Map r0 = r5.propertyProtosBytes
                kotlin.reflect.jvm.internal.impl.protobuf.Parser r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.PARSER
                java.lang.String r2 = "PARSER"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r2 = r5.this$0
                java.lang.Object r0 = r0.get(r6)
                byte[] r0 = (byte[]) r0
                if (r0 == 0) goto L2a
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope r3 = r5.this$0
                java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream
                r4.<init>(r0)
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1 r0 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1
                r0.<init>(r1, r4, r3)
                kotlin.sequences.Sequence r0 = kotlin.sequences.SequencesKt.generateSequence(r0)
                java.util.List r0 = kotlin.sequences.SequencesKt.toList(r0)
                if (r0 == 0) goto L2a
                goto L2e
            L2a:
                java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            L2e:
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = r0.size()
                r1.<init>(r3)
                java.util.Iterator r0 = r0.iterator()
            L3b:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L5c
                java.lang.Object r3 = r0.next()
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r3
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext r4 = r2.getC()
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer r4 = r4.getMemberDeserializer()
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
                kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor r3 = r4.loadProperty(r3)
                if (r3 == 0) goto L3b
                r1.add(r3)
                goto L3b
            L5c:
                r2.computeNonDeclaredProperties(r6, r1)
                java.util.List r6 = kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(r1)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.OptimizedImplementation.computeProperties(kotlin.reflect.jvm.internal.impl.name.Name):java.util.Collection");
        }

        private final TypeAliasDescriptor createTypeAlias(Name name) {
            ProtoBuf$TypeAlias parseDelimitedFrom;
            byte[] bArr = (byte[]) this.typeAliasBytes.get(name);
            if (bArr == null || (parseDelimitedFrom = ProtoBuf$TypeAlias.parseDelimitedFrom(new ByteArrayInputStream(bArr), this.this$0.getC().getComponents().getExtensionRegistryLite())) == null) {
                return null;
            }
            return this.this$0.getC().getMemberDeserializer().loadTypeAlias(parseDelimitedFrom);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Collection getContributedFunctions(Name name, LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            return !getFunctionNames().contains(name) ? CollectionsKt.emptyList() : (Collection) this.functions.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public TypeAliasDescriptor getTypeAliasByName(Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return (TypeAliasDescriptor) this.typeAliasByName.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Collection getContributedVariables(Name name, LookupLocation location) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            return !getVariableNames().contains(name) ? CollectionsKt.emptyList() : (Collection) this.properties.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public void addFunctionsAndPropertiesTo(Collection result, DescriptorKindFilter kindFilter, Function1 nameFilter, LookupLocation location) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            Intrinsics.checkNotNullParameter(location, "location");
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK())) {
                Set<Name> variableNames = getVariableNames();
                ArrayList arrayList = new ArrayList();
                for (Name name : variableNames) {
                    if (((Boolean) nameFilter.invoke(name)).booleanValue()) {
                        arrayList.addAll(getContributedVariables(name, location));
                    }
                }
                MemberComparator$NameAndTypeMemberComparator INSTANCE = new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator
                    private static int getDeclarationPriority(DeclarationDescriptor declarationDescriptor) {
                        if (DescriptorUtils.isEnumEntry(declarationDescriptor)) {
                            return 8;
                        }
                        if (declarationDescriptor instanceof ConstructorDescriptor) {
                            return 7;
                        }
                        if (declarationDescriptor instanceof PropertyDescriptor) {
                            return ((PropertyDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 6 : 5;
                        }
                        if (declarationDescriptor instanceof FunctionDescriptor) {
                            return ((FunctionDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 4 : 3;
                        }
                        if (declarationDescriptor instanceof ClassDescriptor) {
                            return 2;
                        }
                        return declarationDescriptor instanceof TypeAliasDescriptor ? 1 : 0;
                    }

                    @Override // java.util.Comparator
                    public int compare(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
                        Integer compareInternal = compareInternal(declarationDescriptor, declarationDescriptor2);
                        if (compareInternal != null) {
                            return compareInternal.intValue();
                        }
                        return 0;
                    }

                    private static Integer compareInternal(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
                        int declarationPriority = getDeclarationPriority(declarationDescriptor2) - getDeclarationPriority(declarationDescriptor);
                        if (declarationPriority != 0) {
                            return Integer.valueOf(declarationPriority);
                        }
                        if (DescriptorUtils.isEnumEntry(declarationDescriptor) && DescriptorUtils.isEnumEntry(declarationDescriptor2)) {
                            return 0;
                        }
                        int compareTo = declarationDescriptor.getName().compareTo(declarationDescriptor2.getName());
                        if (compareTo != 0) {
                            return Integer.valueOf(compareTo);
                        }
                        return null;
                    }
                };
                Intrinsics.checkNotNullExpressionValue(INSTANCE, "INSTANCE");
                CollectionsKt.sortWith(arrayList, INSTANCE);
                result.addAll(arrayList);
            }
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK())) {
                Set<Name> functionNames = getFunctionNames();
                ArrayList arrayList2 = new ArrayList();
                for (Name name2 : functionNames) {
                    if (((Boolean) nameFilter.invoke(name2)).booleanValue()) {
                        arrayList2.addAll(getContributedFunctions(name2, location));
                    }
                }
                MemberComparator$NameAndTypeMemberComparator INSTANCE2 = new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.resolve.MemberComparator$NameAndTypeMemberComparator
                    private static int getDeclarationPriority(DeclarationDescriptor declarationDescriptor) {
                        if (DescriptorUtils.isEnumEntry(declarationDescriptor)) {
                            return 8;
                        }
                        if (declarationDescriptor instanceof ConstructorDescriptor) {
                            return 7;
                        }
                        if (declarationDescriptor instanceof PropertyDescriptor) {
                            return ((PropertyDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 6 : 5;
                        }
                        if (declarationDescriptor instanceof FunctionDescriptor) {
                            return ((FunctionDescriptor) declarationDescriptor).getExtensionReceiverParameter() == null ? 4 : 3;
                        }
                        if (declarationDescriptor instanceof ClassDescriptor) {
                            return 2;
                        }
                        return declarationDescriptor instanceof TypeAliasDescriptor ? 1 : 0;
                    }

                    @Override // java.util.Comparator
                    public int compare(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
                        Integer compareInternal = compareInternal(declarationDescriptor, declarationDescriptor2);
                        if (compareInternal != null) {
                            return compareInternal.intValue();
                        }
                        return 0;
                    }

                    private static Integer compareInternal(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2) {
                        int declarationPriority = getDeclarationPriority(declarationDescriptor2) - getDeclarationPriority(declarationDescriptor);
                        if (declarationPriority != 0) {
                            return Integer.valueOf(declarationPriority);
                        }
                        if (DescriptorUtils.isEnumEntry(declarationDescriptor) && DescriptorUtils.isEnumEntry(declarationDescriptor2)) {
                            return 0;
                        }
                        int compareTo = declarationDescriptor.getName().compareTo(declarationDescriptor2.getName());
                        if (compareTo != 0) {
                            return Integer.valueOf(compareTo);
                        }
                        return null;
                    }
                };
                Intrinsics.checkNotNullExpressionValue(INSTANCE2, "INSTANCE");
                CollectionsKt.sortWith(arrayList2, INSTANCE2);
                result.addAll(arrayList2);
            }
        }

        private final Map packToByteArray(Map map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    ((AbstractMessageLite) it.next()).writeDelimitedTo(byteArrayOutputStream);
                    arrayList.add(Unit.INSTANCE);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DeserializedMemberScope.kt */
    final class NoReorderImplementation implements Implementation {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "allProperties", "getAllProperties()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(NoReorderImplementation.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
        private final NotNullLazyValue allFunctions$delegate;
        private final NotNullLazyValue allProperties$delegate;
        private final NotNullLazyValue allTypeAliases$delegate;
        private final NotNullLazyValue declaredFunctions$delegate;
        private final NotNullLazyValue declaredProperties$delegate;
        private final List functionList;
        private final NotNullLazyValue functionNames$delegate;
        private final NotNullLazyValue functionsByName$delegate;
        private final NotNullLazyValue propertiesByName$delegate;
        private final List propertyList;
        final /* synthetic */ DeserializedMemberScope this$0;
        private final List typeAliasList;
        private final NotNullLazyValue typeAliasesByName$delegate;
        private final NotNullLazyValue variableNames$delegate;

        public NoReorderImplementation(final DeserializedMemberScope deserializedMemberScope, List functionList, List propertyList, List typeAliasList) {
            Intrinsics.checkNotNullParameter(functionList, "functionList");
            Intrinsics.checkNotNullParameter(propertyList, "propertyList");
            Intrinsics.checkNotNullParameter(typeAliasList, "typeAliasList");
            this.this$0 = deserializedMemberScope;
            this.functionList = functionList;
            this.propertyList = propertyList;
            this.typeAliasList = deserializedMemberScope.getC().getComponents().getConfiguration().getTypeAliasesAllowed() ? typeAliasList : CollectionsKt.emptyList();
            this.declaredFunctions$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$0
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    List computeFunctions;
                    computeFunctions = this.arg$0.computeFunctions();
                    return computeFunctions;
                }
            });
            this.declaredProperties$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$1
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    List computeProperties;
                    computeProperties = this.arg$0.computeProperties();
                    return computeProperties;
                }
            });
            this.allTypeAliases$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$2
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    List computeTypeAliases;
                    computeTypeAliases = this.arg$0.computeTypeAliases();
                    return computeTypeAliases;
                }
            });
            this.allFunctions$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$3
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    List allFunctions_delegate$lambda$3;
                    allFunctions_delegate$lambda$3 = DeserializedMemberScope.NoReorderImplementation.allFunctions_delegate$lambda$3(this.arg$0);
                    return allFunctions_delegate$lambda$3;
                }
            });
            this.allProperties$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$4
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    List allProperties_delegate$lambda$4;
                    allProperties_delegate$lambda$4 = DeserializedMemberScope.NoReorderImplementation.allProperties_delegate$lambda$4(this.arg$0);
                    return allProperties_delegate$lambda$4;
                }
            });
            this.typeAliasesByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$5
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Map typeAliasesByName_delegate$lambda$6;
                    typeAliasesByName_delegate$lambda$6 = DeserializedMemberScope.NoReorderImplementation.typeAliasesByName_delegate$lambda$6(this.arg$0);
                    return typeAliasesByName_delegate$lambda$6;
                }
            });
            this.functionsByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$6
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Map functionsByName_delegate$lambda$8;
                    functionsByName_delegate$lambda$8 = DeserializedMemberScope.NoReorderImplementation.functionsByName_delegate$lambda$8(this.arg$0);
                    return functionsByName_delegate$lambda$8;
                }
            });
            this.propertiesByName$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$7
                private final DeserializedMemberScope.NoReorderImplementation arg$0;

                {
                    this.arg$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Map propertiesByName_delegate$lambda$10;
                    propertiesByName_delegate$lambda$10 = DeserializedMemberScope.NoReorderImplementation.propertiesByName_delegate$lambda$10(this.arg$0);
                    return propertiesByName_delegate$lambda$10;
                }
            });
            this.functionNames$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this, deserializedMemberScope) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$8
                private final DeserializedMemberScope.NoReorderImplementation arg$0;
                private final DeserializedMemberScope arg$1;

                {
                    this.arg$0 = this;
                    this.arg$1 = deserializedMemberScope;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Set functionNames_delegate$lambda$12;
                    functionNames_delegate$lambda$12 = DeserializedMemberScope.NoReorderImplementation.functionNames_delegate$lambda$12(this.arg$0, this.arg$1);
                    return functionNames_delegate$lambda$12;
                }
            });
            this.variableNames$delegate = deserializedMemberScope.getC().getStorageManager().createLazyValue(new Function0(this, deserializedMemberScope) { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope$NoReorderImplementation$$Lambda$9
                private final DeserializedMemberScope.NoReorderImplementation arg$0;
                private final DeserializedMemberScope arg$1;

                {
                    this.arg$0 = this;
                    this.arg$1 = deserializedMemberScope;
                }

                @Override // kotlin.jvm.functions.Function0
                public Object invoke() {
                    Set variableNames_delegate$lambda$14;
                    variableNames_delegate$lambda$14 = DeserializedMemberScope.NoReorderImplementation.variableNames_delegate$lambda$14(this.arg$0, this.arg$1);
                    return variableNames_delegate$lambda$14;
                }
            });
        }

        private final List getDeclaredFunctions() {
            return (List) StorageKt.getValue(this.declaredFunctions$delegate, this, $$delegatedProperties[0]);
        }

        private final List getDeclaredProperties() {
            return (List) StorageKt.getValue(this.declaredProperties$delegate, this, $$delegatedProperties[1]);
        }

        private final List getAllTypeAliases() {
            return (List) StorageKt.getValue(this.allTypeAliases$delegate, this, $$delegatedProperties[2]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List allFunctions_delegate$lambda$3(NoReorderImplementation noReorderImplementation) {
            return CollectionsKt.plus((Collection) noReorderImplementation.getDeclaredFunctions(), (Iterable) noReorderImplementation.computeAllNonDeclaredFunctions());
        }

        private final List getAllFunctions() {
            return (List) StorageKt.getValue(this.allFunctions$delegate, this, $$delegatedProperties[3]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List allProperties_delegate$lambda$4(NoReorderImplementation noReorderImplementation) {
            return CollectionsKt.plus((Collection) noReorderImplementation.getDeclaredProperties(), (Iterable) noReorderImplementation.computeAllNonDeclaredProperties());
        }

        private final List getAllProperties() {
            return (List) StorageKt.getValue(this.allProperties$delegate, this, $$delegatedProperties[4]);
        }

        private final Map getTypeAliasesByName() {
            return (Map) StorageKt.getValue(this.typeAliasesByName$delegate, this, $$delegatedProperties[5]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Map typeAliasesByName_delegate$lambda$6(NoReorderImplementation noReorderImplementation) {
            List allTypeAliases = noReorderImplementation.getAllTypeAliases();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(allTypeAliases, 10)), 16));
            for (Object obj : allTypeAliases) {
                Name name = ((TypeAliasDescriptor) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                linkedHashMap.put(name, obj);
            }
            return linkedHashMap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Map functionsByName_delegate$lambda$8(NoReorderImplementation noReorderImplementation) {
            List allFunctions = noReorderImplementation.getAllFunctions();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : allFunctions) {
                Name name = ((SimpleFunctionDescriptor) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Object obj2 = linkedHashMap.get(name);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(name, obj2);
                }
                ((List) obj2).add(obj);
            }
            return linkedHashMap;
        }

        private final Map getFunctionsByName() {
            return (Map) StorageKt.getValue(this.functionsByName$delegate, this, $$delegatedProperties[6]);
        }

        private final Map getPropertiesByName() {
            return (Map) StorageKt.getValue(this.propertiesByName$delegate, this, $$delegatedProperties[7]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Map propertiesByName_delegate$lambda$10(NoReorderImplementation noReorderImplementation) {
            List allProperties = noReorderImplementation.getAllProperties();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : allProperties) {
                Name name = ((PropertyDescriptor) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Object obj2 = linkedHashMap.get(name);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(name, obj2);
                }
                ((List) obj2).add(obj);
            }
            return linkedHashMap;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getFunctionNames() {
            return (Set) StorageKt.getValue(this.functionNames$delegate, this, $$delegatedProperties[8]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Set functionNames_delegate$lambda$12(NoReorderImplementation noReorderImplementation, DeserializedMemberScope deserializedMemberScope) {
            List list = noReorderImplementation.functionList;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope2 = noReorderImplementation.this$0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(NameResolverUtilKt.getName(deserializedMemberScope2.getC().getNameResolver(), ((ProtoBuf$Function) ((MessageLite) it.next())).getName()));
            }
            return SetsKt.plus((Set) linkedHashSet, (Iterable) deserializedMemberScope.getNonDeclaredFunctionNames());
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getVariableNames() {
            return (Set) StorageKt.getValue(this.variableNames$delegate, this, $$delegatedProperties[9]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Set variableNames_delegate$lambda$14(NoReorderImplementation noReorderImplementation, DeserializedMemberScope deserializedMemberScope) {
            List list = noReorderImplementation.propertyList;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope2 = noReorderImplementation.this$0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(NameResolverUtilKt.getName(deserializedMemberScope2.getC().getNameResolver(), ((ProtoBuf$Property) ((MessageLite) it.next())).getName()));
            }
            return SetsKt.plus((Set) linkedHashSet, (Iterable) deserializedMemberScope.getNonDeclaredVariableNames());
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Set getTypeAliasNames() {
            List list = this.typeAliasList;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(NameResolverUtilKt.getName(deserializedMemberScope.getC().getNameResolver(), ((ProtoBuf$TypeAlias) ((MessageLite) it.next())).getName()));
            }
            return linkedHashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List computeFunctions() {
            List list = this.functionList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SimpleFunctionDescriptor loadFunction = deserializedMemberScope.getC().getMemberDeserializer().loadFunction((ProtoBuf$Function) ((MessageLite) it.next()));
                if (!deserializedMemberScope.isDeclaredFunctionAvailable(loadFunction)) {
                    loadFunction = null;
                }
                if (loadFunction != null) {
                    arrayList.add(loadFunction);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List computeProperties() {
            List list = this.propertyList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PropertyDescriptor loadProperty = deserializedMemberScope.getC().getMemberDeserializer().loadProperty((ProtoBuf$Property) ((MessageLite) it.next()));
                if (loadProperty != null) {
                    arrayList.add(loadProperty);
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List computeTypeAliases() {
            List list = this.typeAliasList;
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TypeAliasDescriptor loadTypeAlias = deserializedMemberScope.getC().getMemberDeserializer().loadTypeAlias((ProtoBuf$TypeAlias) ((MessageLite) it.next()));
                if (loadTypeAlias != null) {
                    arrayList.add(loadTypeAlias);
                }
            }
            return arrayList;
        }

        private final List computeAllNonDeclaredFunctions() {
            Set nonDeclaredFunctionNames = this.this$0.getNonDeclaredFunctionNames();
            ArrayList arrayList = new ArrayList();
            Iterator it = nonDeclaredFunctionNames.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(arrayList, computeNonDeclaredFunctionsForName((Name) it.next()));
            }
            return arrayList;
        }

        private final List computeAllNonDeclaredProperties() {
            Set nonDeclaredVariableNames = this.this$0.getNonDeclaredVariableNames();
            ArrayList arrayList = new ArrayList();
            Iterator it = nonDeclaredVariableNames.iterator();
            while (it.hasNext()) {
                CollectionsKt.addAll(arrayList, computeNonDeclaredPropertiesForName((Name) it.next()));
            }
            return arrayList;
        }

        private final List computeNonDeclaredFunctionsForName(Name name) {
            List declaredFunctions = getDeclaredFunctions();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (Object obj : declaredFunctions) {
                if (Intrinsics.areEqual(((DeclarationDescriptor) obj).getName(), name)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.computeNonDeclaredFunctions(name, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        private final List computeNonDeclaredPropertiesForName(Name name) {
            List declaredProperties = getDeclaredProperties();
            DeserializedMemberScope deserializedMemberScope = this.this$0;
            ArrayList arrayList = new ArrayList();
            for (Object obj : declaredProperties) {
                if (Intrinsics.areEqual(((DeclarationDescriptor) obj).getName(), name)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            deserializedMemberScope.computeNonDeclaredProperties(name, arrayList);
            return arrayList.subList(size, arrayList.size());
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Collection getContributedFunctions(Name name, LookupLocation location) {
            Collection collection;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            return (getFunctionNames().contains(name) && (collection = (Collection) getFunctionsByName().get(name)) != null) ? collection : CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public TypeAliasDescriptor getTypeAliasByName(Name name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return (TypeAliasDescriptor) getTypeAliasesByName().get(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public Collection getContributedVariables(Name name, LookupLocation location) {
            Collection collection;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(location, "location");
            return (getVariableNames().contains(name) && (collection = (Collection) getPropertiesByName().get(name)) != null) ? collection : CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope.Implementation
        public void addFunctionsAndPropertiesTo(Collection result, DescriptorKindFilter kindFilter, Function1 nameFilter, LookupLocation location) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(kindFilter, "kindFilter");
            Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
            Intrinsics.checkNotNullParameter(location, "location");
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getVARIABLES_MASK())) {
                for (Object obj : getAllProperties()) {
                    Name name = ((PropertyDescriptor) obj).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (((Boolean) nameFilter.invoke(name)).booleanValue()) {
                        result.add(obj);
                    }
                }
            }
            if (kindFilter.acceptsKinds(DescriptorKindFilter.Companion.getFUNCTIONS_MASK())) {
                for (Object obj2 : getAllFunctions()) {
                    Name name2 = ((SimpleFunctionDescriptor) obj2).getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (((Boolean) nameFilter.invoke(name2)).booleanValue()) {
                        result.add(obj2);
                    }
                }
            }
        }
    }
}
