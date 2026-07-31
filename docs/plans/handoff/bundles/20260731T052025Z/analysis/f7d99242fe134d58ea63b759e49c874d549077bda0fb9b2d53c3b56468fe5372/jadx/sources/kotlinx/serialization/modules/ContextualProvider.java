package kotlinx.serialization.modules;

import java.util.List;
import kotlinx.serialization.KSerializer;
import net.thunderbird.feature.search.legacy.serialization.MessageSearchFieldAsSearchFieldSerializer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ContextualProvider {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Argless extends ContextualProvider {
        public final boolean equals(Object obj) {
            if (!(obj instanceof Argless)) {
                return false;
            }
            MessageSearchFieldAsSearchFieldSerializer messageSearchFieldAsSearchFieldSerializer = MessageSearchFieldAsSearchFieldSerializer.INSTANCE;
            return true;
        }

        public final int hashCode() {
            return MessageSearchFieldAsSearchFieldSerializer.INSTANCE.hashCode();
        }

        @Override // kotlinx.serialization.modules.ContextualProvider
        public final KSerializer invoke(List list) {
            list.getClass();
            return MessageSearchFieldAsSearchFieldSerializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class WithTypeArguments extends ContextualProvider {
    }

    public abstract KSerializer invoke(List list);
}
