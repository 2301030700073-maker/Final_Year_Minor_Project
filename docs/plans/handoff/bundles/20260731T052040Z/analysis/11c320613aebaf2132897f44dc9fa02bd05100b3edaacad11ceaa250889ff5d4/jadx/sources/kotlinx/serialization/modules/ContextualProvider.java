package kotlinx.serialization.modules;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ContextualProvider {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Argless extends ContextualProvider {
        public final KSerializer serializer;

        public Argless(KSerializer kSerializer) {
            this.serializer = kSerializer;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Argless) && ((Argless) obj).serializer.equals(this.serializer);
        }

        public final int hashCode() {
            return this.serializer.hashCode();
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public final KSerializer invoke(List list) {
            return this.serializer;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class WithTypeArguments extends ContextualProvider {
        public final Function1 provider;

        public WithTypeArguments(Function1 function1) {
            this.provider = function1;
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public final KSerializer invoke(List list) {
            return (KSerializer) this.provider.invoke(list);
        }
    }

    public abstract KSerializer invoke(List list);
}
