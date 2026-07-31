package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyWrappedType extends KotlinType {
    public final Function0 computation;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue lazyValue;
    public final LockBasedStorageManager storageManager;

    public LazyWrappedType(LockBasedStorageManager lockBasedStorageManager, Function0 function0) {
        this.storageManager = lockBasedStorageManager;
        this.computation = function0;
        this.lazyValue = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List getArguments() {
        return getDelegate().getArguments();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeAttributes getAttributes() {
        return getDelegate().getAttributes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeConstructor getConstructor() {
        return getDelegate().getConstructor();
    }

    public final KotlinType getDelegate() {
        return (KotlinType) this.lazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope getMemberScope() {
        return getDelegate().getMemberScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return getDelegate().isMarkedNullable();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final KotlinType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        return new LazyWrappedType(this.storageManager, new AndroidLeakFixes$Companion$onDecorViewReady$1(18, kotlinTypeRefiner$Default, this));
    }

    public final String toString() {
        LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = this.lazyValue;
        return (lockBasedNotNullLazyValue.value == LockBasedStorageManager.NotValue.NOT_COMPUTED || lockBasedNotNullLazyValue.value == LockBasedStorageManager.NotValue.COMPUTING) ? "<Not computed yet>" : getDelegate().toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType unwrap() {
        KotlinType delegate = getDelegate();
        while (delegate instanceof LazyWrappedType) {
            delegate = ((LazyWrappedType) delegate).getDelegate();
        }
        delegate.getClass();
        return (UnwrappedType) delegate;
    }
}
