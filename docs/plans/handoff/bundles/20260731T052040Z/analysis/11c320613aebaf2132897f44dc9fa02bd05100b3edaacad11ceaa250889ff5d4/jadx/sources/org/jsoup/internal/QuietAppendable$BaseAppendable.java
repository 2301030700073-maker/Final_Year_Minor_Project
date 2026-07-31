package org.jsoup.internal;

import androidx.compose.ui.Modifier;
import java.io.IOException;
import java.util.Locale;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class QuietAppendable$BaseAppendable {
    public static final String[] FormSubmitTags = {"input", "keygen", "object", "select", "textarea"};
    public final /* synthetic */ int $r8$classId;
    public final Appendable a;

    public /* synthetic */ QuietAppendable$BaseAppendable(Appendable appendable, int i) {
        this.$r8$classId = i;
        this.a = appendable;
    }

    public static String lowerCase(String str) {
        return str != null ? str.toLowerCase(Locale.ROOT) : "";
    }

    public static String normalize(String str) {
        return lowerCase(str).trim();
    }

    public static QuietAppendable$BaseAppendable wrap(StringBuilder sb) {
        return Modifier.CC.m182m((Object) sb) ? new QuietAppendable$BaseAppendable(sb, 1) : new QuietAppendable$BaseAppendable(sb, 0);
    }

    public final QuietAppendable$BaseAppendable append(String str) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    this.a.append(str);
                    return this;
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            default:
                ((StringBuilder) this.a).append((CharSequence) str);
                return this;
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return ((StringBuilder) this.a).toString();
            default:
                return super.toString();
        }
    }

    public final QuietAppendable$BaseAppendable append(char c) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    this.a.append(c);
                    return this;
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            default:
                ((StringBuilder) this.a).append(c);
                return this;
        }
    }
}
