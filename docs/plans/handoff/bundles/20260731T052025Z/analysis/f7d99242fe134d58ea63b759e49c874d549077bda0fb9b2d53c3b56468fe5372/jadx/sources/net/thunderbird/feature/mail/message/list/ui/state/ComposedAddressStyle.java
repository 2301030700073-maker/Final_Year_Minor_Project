package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ComposedAddressStyle {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Bold implements ComposedAddressStyle {
        public final Integer end;

        public Bold(Integer num) {
            this.end = num;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Bold) && Intrinsics.areEqual(this.end, ((Bold) obj).end);
        }

        public final int hashCode() {
            Integer num = this.end;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public final String toString() {
            return "Bold(start=0, end=" + this.end + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final AbstractPersistentList AllBold = Okio.persistentListOf(new Bold(null));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Regular implements ComposedAddressStyle {
        public final int start;

        public Regular(int i) {
            this.start = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Regular) && this.start == ((Regular) obj).start;
        }

        public final int hashCode() {
            return this.start * 31;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.start, "Regular(start=", ", end=null)");
        }
    }
}
