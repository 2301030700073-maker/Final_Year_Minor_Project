package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScopesHolderForClass {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public static final SourceFile$1 Companion;
    public final AbstractClassDescriptor classDescriptor;
    public final Function1 scopeFactory;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue scopeForOwnerModule$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(ScopesHolderForClass.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
        Companion = new SourceFile$1(5);
    }

    public ScopesHolderForClass(AbstractClassDescriptor abstractClassDescriptor, LockBasedStorageManager lockBasedStorageManager, Function1 function1) {
        this.classDescriptor = abstractClassDescriptor;
        this.scopeFactory = function1;
        this.scopeForOwnerModule$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new LayoutNode$_foldedChildren$1(29, this));
    }
}
