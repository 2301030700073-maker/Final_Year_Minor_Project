package app.k9mail.feature.account.setup.ui.specialfolders;

import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SpecialFoldersContract$FormEvent extends SpecialFoldersContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ArchiveFolderChanged implements SpecialFoldersContract$FormEvent {
        public final SpecialFolderOption specialFolderOption;

        public ArchiveFolderChanged(SpecialFolderOption specialFolderOption) {
            specialFolderOption.getClass();
            this.specialFolderOption = specialFolderOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ArchiveFolderChanged) && Intrinsics.areEqual(this.specialFolderOption, ((ArchiveFolderChanged) obj).specialFolderOption);
        }

        public final int hashCode() {
            return this.specialFolderOption.hashCode();
        }

        public final String toString() {
            return "ArchiveFolderChanged(specialFolderOption=" + this.specialFolderOption + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DraftsFolderChanged implements SpecialFoldersContract$FormEvent {
        public final SpecialFolderOption specialFolderOption;

        public DraftsFolderChanged(SpecialFolderOption specialFolderOption) {
            specialFolderOption.getClass();
            this.specialFolderOption = specialFolderOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DraftsFolderChanged) && Intrinsics.areEqual(this.specialFolderOption, ((DraftsFolderChanged) obj).specialFolderOption);
        }

        public final int hashCode() {
            return this.specialFolderOption.hashCode();
        }

        public final String toString() {
            return "DraftsFolderChanged(specialFolderOption=" + this.specialFolderOption + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SentFolderChanged implements SpecialFoldersContract$FormEvent {
        public final SpecialFolderOption specialFolderOption;

        public SentFolderChanged(SpecialFolderOption specialFolderOption) {
            specialFolderOption.getClass();
            this.specialFolderOption = specialFolderOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SentFolderChanged) && Intrinsics.areEqual(this.specialFolderOption, ((SentFolderChanged) obj).specialFolderOption);
        }

        public final int hashCode() {
            return this.specialFolderOption.hashCode();
        }

        public final String toString() {
            return "SentFolderChanged(specialFolderOption=" + this.specialFolderOption + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SpamFolderChanged implements SpecialFoldersContract$FormEvent {
        public final SpecialFolderOption specialFolderOption;

        public SpamFolderChanged(SpecialFolderOption specialFolderOption) {
            specialFolderOption.getClass();
            this.specialFolderOption = specialFolderOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SpamFolderChanged) && Intrinsics.areEqual(this.specialFolderOption, ((SpamFolderChanged) obj).specialFolderOption);
        }

        public final int hashCode() {
            return this.specialFolderOption.hashCode();
        }

        public final String toString() {
            return "SpamFolderChanged(specialFolderOption=" + this.specialFolderOption + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TrashFolderChanged implements SpecialFoldersContract$FormEvent {
        public final SpecialFolderOption specialFolderOption;

        public TrashFolderChanged(SpecialFolderOption specialFolderOption) {
            specialFolderOption.getClass();
            this.specialFolderOption = specialFolderOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TrashFolderChanged) && Intrinsics.areEqual(this.specialFolderOption, ((TrashFolderChanged) obj).specialFolderOption);
        }

        public final int hashCode() {
            return this.specialFolderOption.hashCode();
        }

        public final String toString() {
            return "TrashFolderChanged(specialFolderOption=" + this.specialFolderOption + ")";
        }
    }
}
