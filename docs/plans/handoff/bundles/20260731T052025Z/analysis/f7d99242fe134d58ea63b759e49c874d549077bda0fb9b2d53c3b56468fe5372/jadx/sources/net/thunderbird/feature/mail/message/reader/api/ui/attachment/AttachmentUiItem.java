package net.thunderbird.feature.mail.message.reader.api.ui.attachment;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.Part;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AttachmentUiItem {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class File implements AttachmentUiItem {
        public final boolean downloaded;
        public final boolean encrypted;
        public final String filename;
        public final String formattedSize;
        public final String id;
        public final String mimeType;
        public final Object part;
        public final long size;

        public File(String str, String str2, String str3, long j, String str4, Part part, boolean z, boolean z2) {
            str.getClass();
            str3.getClass();
            this.id = str;
            this.filename = str2;
            this.formattedSize = str3;
            this.size = j;
            this.mimeType = str4;
            this.part = part;
            this.downloaded = z;
            this.encrypted = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof File)) {
                return false;
            }
            File file = (File) obj;
            return Intrinsics.areEqual(this.id, file.id) && Intrinsics.areEqual(this.filename, file.filename) && Intrinsics.areEqual(this.formattedSize, file.formattedSize) && this.size == file.size && Intrinsics.areEqual(this.mimeType, file.mimeType) && Intrinsics.areEqual(this.part, file.part) && this.downloaded == file.downloaded && this.encrypted == file.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getDownloaded() {
            return this.downloaded;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getEncrypted() {
            return this.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFilename() {
            return this.filename;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFormattedSize() {
            return this.formattedSize;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        /* renamed from: getId-c0-oeyA */
        public final String mo1039getIdc0oeyA() {
            return this.id;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getMimeType() {
            return this.mimeType;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final Object getPart() {
            return this.part;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final long getSize() {
            return this.size;
        }

        public final int hashCode() {
            int hashCode = this.id.hashCode() * 31;
            String str = this.filename;
            int m = Modifier.CC.m((hashCode + (str == null ? 0 : str.hashCode())) * 31, this.formattedSize, 31);
            long j = this.size;
            int i = (m + ((int) (j ^ (j >>> 32)))) * 31;
            String str2 = this.mimeType;
            int hashCode2 = (i + (str2 == null ? 0 : str2.hashCode())) * 31;
            Object obj = this.part;
            return ((((hashCode2 + (obj != null ? obj.hashCode() : 0)) * 31) + (this.downloaded ? 1231 : 1237)) * 31) + (this.encrypted ? 1231 : 1237);
        }

        public final String toString() {
            StringBuilder m = Config.CC.m("File(id=", AttachmentId.m1038toStringimpl(this.id), ", filename=", this.filename, ", formattedSize=");
            m.append(this.formattedSize);
            m.append(", size=");
            m.append(this.size);
            m.append(", mimeType=");
            m.append(this.mimeType);
            m.append(", part=");
            m.append(this.part);
            m.append(", downloaded=");
            m.append(this.downloaded);
            m.append(", encrypted=");
            m.append(this.encrypted);
            m.append(")");
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InlinedFile implements AttachmentUiItem {
        public final boolean downloaded;
        public final boolean encrypted;
        public final String filename;
        public final String formattedSize;
        public final String id;
        public final String mimeType;
        public final Object part;
        public final long size;

        public InlinedFile(String str, String str2, String str3, long j, String str4, Part part, boolean z, boolean z2) {
            str.getClass();
            str3.getClass();
            this.id = str;
            this.filename = str2;
            this.formattedSize = str3;
            this.size = j;
            this.mimeType = str4;
            this.part = part;
            this.downloaded = z;
            this.encrypted = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InlinedFile)) {
                return false;
            }
            InlinedFile inlinedFile = (InlinedFile) obj;
            return Intrinsics.areEqual(this.id, inlinedFile.id) && Intrinsics.areEqual(this.filename, inlinedFile.filename) && Intrinsics.areEqual(this.formattedSize, inlinedFile.formattedSize) && this.size == inlinedFile.size && Intrinsics.areEqual(this.mimeType, inlinedFile.mimeType) && Intrinsics.areEqual(this.part, inlinedFile.part) && this.downloaded == inlinedFile.downloaded && this.encrypted == inlinedFile.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getDownloaded() {
            return this.downloaded;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getEncrypted() {
            return this.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFilename() {
            return this.filename;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFormattedSize() {
            return this.formattedSize;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        /* renamed from: getId-c0-oeyA */
        public final String mo1039getIdc0oeyA() {
            return this.id;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getMimeType() {
            return this.mimeType;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final Object getPart() {
            return this.part;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final long getSize() {
            return this.size;
        }

        public final int hashCode() {
            int hashCode = this.id.hashCode() * 31;
            String str = this.filename;
            int m = Modifier.CC.m((hashCode + (str == null ? 0 : str.hashCode())) * 31, this.formattedSize, 31);
            long j = this.size;
            int i = (m + ((int) (j ^ (j >>> 32)))) * 31;
            String str2 = this.mimeType;
            int hashCode2 = (i + (str2 == null ? 0 : str2.hashCode())) * 31;
            Object obj = this.part;
            return ((((hashCode2 + (obj != null ? obj.hashCode() : 0)) * 31) + (this.downloaded ? 1231 : 1237)) * 31) + (this.encrypted ? 1231 : 1237);
        }

        public final String toString() {
            StringBuilder m = Config.CC.m("InlinedFile(id=", AttachmentId.m1038toStringimpl(this.id), ", filename=", this.filename, ", formattedSize=");
            m.append(this.formattedSize);
            m.append(", size=");
            m.append(this.size);
            m.append(", mimeType=");
            m.append(this.mimeType);
            m.append(", part=");
            m.append(this.part);
            m.append(", downloaded=");
            m.append(this.downloaded);
            m.append(", encrypted=");
            m.append(this.encrypted);
            m.append(")");
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InlinedImage implements AttachmentUiItem {
        public final boolean downloaded;
        public final boolean encrypted;
        public final String filename;
        public final String formattedSize;
        public final String id;
        public final String mimeType;
        public final Object part;
        public final String rawBase64;
        public final long size;

        public InlinedImage(String str, String str2, String str3, String str4, long j, String str5, Part part, boolean z, boolean z2) {
            str.getClass();
            str2.getClass();
            str4.getClass();
            this.id = str;
            this.rawBase64 = str2;
            this.filename = str3;
            this.formattedSize = str4;
            this.size = j;
            this.mimeType = str5;
            this.part = part;
            this.downloaded = z;
            this.encrypted = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InlinedImage)) {
                return false;
            }
            InlinedImage inlinedImage = (InlinedImage) obj;
            return Intrinsics.areEqual(this.id, inlinedImage.id) && Intrinsics.areEqual(this.rawBase64, inlinedImage.rawBase64) && Intrinsics.areEqual(this.filename, inlinedImage.filename) && Intrinsics.areEqual(this.formattedSize, inlinedImage.formattedSize) && this.size == inlinedImage.size && Intrinsics.areEqual(this.mimeType, inlinedImage.mimeType) && Intrinsics.areEqual(this.part, inlinedImage.part) && this.downloaded == inlinedImage.downloaded && this.encrypted == inlinedImage.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getDownloaded() {
            return this.downloaded;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getEncrypted() {
            return this.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFilename() {
            return this.filename;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFormattedSize() {
            return this.formattedSize;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        /* renamed from: getId-c0-oeyA */
        public final String mo1039getIdc0oeyA() {
            return this.id;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getMimeType() {
            return this.mimeType;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final Object getPart() {
            return this.part;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final long getSize() {
            return this.size;
        }

        public final int hashCode() {
            int m = Modifier.CC.m(this.id.hashCode() * 31, this.rawBase64, 31);
            String str = this.filename;
            int m2 = Modifier.CC.m((m + (str == null ? 0 : str.hashCode())) * 31, this.formattedSize, 31);
            long j = this.size;
            int i = (m2 + ((int) (j ^ (j >>> 32)))) * 31;
            String str2 = this.mimeType;
            int hashCode = (i + (str2 == null ? 0 : str2.hashCode())) * 31;
            Object obj = this.part;
            return ((((hashCode + (obj != null ? obj.hashCode() : 0)) * 31) + (this.downloaded ? 1231 : 1237)) * 31) + (this.encrypted ? 1231 : 1237);
        }

        public final String toString() {
            StringBuilder m = Config.CC.m("InlinedImage(id=", AttachmentId.m1038toStringimpl(this.id), ", rawBase64=", this.rawBase64, ", filename=");
            Modifier.CC.m(m, this.filename, ", formattedSize=", this.formattedSize, ", size=");
            m.append(this.size);
            m.append(", mimeType=");
            m.append(this.mimeType);
            m.append(", part=");
            m.append(this.part);
            m.append(", downloaded=");
            m.append(this.downloaded);
            m.append(", encrypted=");
            m.append(this.encrypted);
            m.append(")");
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RemoteImage implements AttachmentUiItem {
        public final boolean downloaded;
        public final boolean encrypted;
        public final String filename;
        public final String formattedSize;
        public final String id;
        public final String mimeType;
        public final Object part;
        public final long size;
        public final String url;

        public RemoteImage(String str, String str2, String str3, String str4, long j, String str5, Part part, boolean z, boolean z2) {
            str.getClass();
            str2.getClass();
            str4.getClass();
            this.id = str;
            this.url = str2;
            this.filename = str3;
            this.formattedSize = str4;
            this.size = j;
            this.mimeType = str5;
            this.part = part;
            this.downloaded = z;
            this.encrypted = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteImage)) {
                return false;
            }
            RemoteImage remoteImage = (RemoteImage) obj;
            return Intrinsics.areEqual(this.id, remoteImage.id) && Intrinsics.areEqual(this.url, remoteImage.url) && Intrinsics.areEqual(this.filename, remoteImage.filename) && Intrinsics.areEqual(this.formattedSize, remoteImage.formattedSize) && this.size == remoteImage.size && Intrinsics.areEqual(this.mimeType, remoteImage.mimeType) && Intrinsics.areEqual(this.part, remoteImage.part) && this.downloaded == remoteImage.downloaded && this.encrypted == remoteImage.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getDownloaded() {
            return this.downloaded;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final boolean getEncrypted() {
            return this.encrypted;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFilename() {
            return this.filename;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getFormattedSize() {
            return this.formattedSize;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        /* renamed from: getId-c0-oeyA */
        public final String mo1039getIdc0oeyA() {
            return this.id;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final String getMimeType() {
            return this.mimeType;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final Object getPart() {
            return this.part;
        }

        @Override // net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem
        public final long getSize() {
            return this.size;
        }

        public final int hashCode() {
            int m = Modifier.CC.m(this.id.hashCode() * 31, this.url, 31);
            String str = this.filename;
            int m2 = Modifier.CC.m((m + (str == null ? 0 : str.hashCode())) * 31, this.formattedSize, 31);
            long j = this.size;
            int i = (m2 + ((int) (j ^ (j >>> 32)))) * 31;
            String str2 = this.mimeType;
            int hashCode = (i + (str2 == null ? 0 : str2.hashCode())) * 31;
            Object obj = this.part;
            return ((((hashCode + (obj != null ? obj.hashCode() : 0)) * 31) + (this.downloaded ? 1231 : 1237)) * 31) + (this.encrypted ? 1231 : 1237);
        }

        public final String toString() {
            StringBuilder m = Config.CC.m("RemoteImage(id=", AttachmentId.m1038toStringimpl(this.id), ", url=", this.url, ", filename=");
            Modifier.CC.m(m, this.filename, ", formattedSize=", this.formattedSize, ", size=");
            m.append(this.size);
            m.append(", mimeType=");
            m.append(this.mimeType);
            m.append(", part=");
            m.append(this.part);
            m.append(", downloaded=");
            m.append(this.downloaded);
            m.append(", encrypted=");
            m.append(this.encrypted);
            m.append(")");
            return m.toString();
        }
    }

    boolean getDownloaded();

    boolean getEncrypted();

    String getFilename();

    String getFormattedSize();

    /* renamed from: getId-c0-oeyA, reason: not valid java name */
    String mo1039getIdc0oeyA();

    String getMimeType();

    Object getPart();

    long getSize();
}
