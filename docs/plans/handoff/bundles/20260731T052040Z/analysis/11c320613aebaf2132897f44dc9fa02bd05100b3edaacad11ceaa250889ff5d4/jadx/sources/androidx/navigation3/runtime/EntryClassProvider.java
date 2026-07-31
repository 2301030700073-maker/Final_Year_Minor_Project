package androidx.navigation3.runtime;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EntryClassProvider {
    public final ClassReference clazz;
    public final Function1 clazzContentKey;
    public final ComposableLambdaImpl content;
    public final SaversKt$$ExternalSyntheticLambda4 metadata;

    public EntryClassProvider(ClassReference classReference, Function1 function1, SaversKt$$ExternalSyntheticLambda4 saversKt$$ExternalSyntheticLambda4, ComposableLambdaImpl composableLambdaImpl) {
        this.clazz = classReference;
        this.clazzContentKey = function1;
        this.metadata = saversKt$$ExternalSyntheticLambda4;
        this.content = composableLambdaImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EntryClassProvider) {
            EntryClassProvider entryClassProvider = (EntryClassProvider) obj;
            return this.clazz.equals(entryClassProvider.clazz) && this.clazzContentKey.equals(entryClassProvider.clazzContentKey) && this.metadata == entryClassProvider.metadata && this.content == entryClassProvider.content;
        }
        return false;
    }

    public final int hashCode() {
        return this.content.hashCode() + ((this.metadata.hashCode() + ((this.clazzContentKey.hashCode() + (this.clazz.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EntryClassProvider(clazz=" + this.clazz + ", clazzContentKey=" + this.clazzContentKey + ", metadata=" + this.metadata + ", content=" + this.content + ')';
    }
}
