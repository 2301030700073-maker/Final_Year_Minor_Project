package com.fsck.k9.mail.internet;

import androidx.camera.core.impl.Config;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MimeHeader$Field {
    public final String name;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NameValueField extends MimeHeader$Field {
        public final String value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NameValueField(String str, String str2) {
            super(str);
            str2.getClass();
            this.value = str2;
        }

        @Override // com.fsck.k9.mail.internet.MimeHeader$Field
        public final String getValue() {
            return this.value;
        }

        public final String toString() {
            return Config.CC.m(this.name, ": ", this.value);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RawField extends MimeHeader$Field {
        public final String raw;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RawField(String str, String str2) {
            super(str);
            str.getClass();
            str2.getClass();
            this.raw = str2;
        }

        @Override // com.fsck.k9.mail.internet.MimeHeader$Field
        public final String getValue() {
            String str = this.raw;
            int indexOf$default = StringsKt.indexOf$default(str, ':', 0, 6);
            return indexOf$default == StringsKt.getLastIndex(str) ? "" : StringsKt.trim(str.substring(indexOf$default + 1)).toString();
        }

        public final String toString() {
            return this.raw;
        }
    }

    public MimeHeader$Field(String str) {
        this.name = str;
    }

    public abstract String getValue();
}
