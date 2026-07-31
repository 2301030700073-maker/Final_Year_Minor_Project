package com.fsck.k9;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.file.FileLogSink;
import org.koin.core.component.KoinComponent;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Core$special$$inlined$inject$default$4 implements Function0 {
    public final /* synthetic */ StringQualifier $qualifier;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Core$special$$inlined$inject$default$4(KoinComponent koinComponent, StringQualifier stringQualifier, int i) {
        this.$r8$classId = i;
        this.$qualifier = stringQualifier;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        StringQualifier stringQualifier = this.$qualifier;
        switch (i) {
            case 0:
                Scope scope = Sink$CC.$default$getKoin().scopeRegistry.rootScope;
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CoroutineScope.class);
                scope.getClass();
                return scope.resolve(orCreateKotlinClass, null, stringQualifier);
            case 1:
                Scope scope2 = Sink$CC.$default$getKoin().scopeRegistry.rootScope;
                ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(String.class);
                scope2.getClass();
                return scope2.resolve(orCreateKotlinClass2, null, stringQualifier);
            case 2:
                Scope scope3 = Sink$CC.$default$getKoin().scopeRegistry.rootScope;
                ClassReference orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(String.class);
                scope3.getClass();
                return scope3.resolve(orCreateKotlinClass3, null, stringQualifier);
            default:
                Scope scope4 = Sink$CC.$default$getKoin().scopeRegistry.rootScope;
                ClassReference orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(FileLogSink.class);
                scope4.getClass();
                return scope4.resolve(orCreateKotlinClass4, null, stringQualifier);
        }
    }
}
