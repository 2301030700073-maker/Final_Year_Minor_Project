package androidx.navigation3.runtime;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda4;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EntryProviderScope {
    public final LinkedHashMap clazzProviders = new LinkedHashMap();
    public final LinkedHashMap providers = new LinkedHashMap();

    public final void addEntryProvider(ClassReference classReference, Function1 function1, ComposableLambdaImpl composableLambdaImpl) {
        LinkedHashMap linkedHashMap = this.clazzProviders;
        if (linkedHashMap.containsKey(classReference)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(classReference.getSimpleName(), "An `entry` with the same `clazz` has already been added: ", 46);
        } else {
            linkedHashMap.put(classReference, new EntryClassProvider(classReference, function1, new SaversKt$$ExternalSyntheticLambda4(25), composableLambdaImpl));
        }
    }
}
