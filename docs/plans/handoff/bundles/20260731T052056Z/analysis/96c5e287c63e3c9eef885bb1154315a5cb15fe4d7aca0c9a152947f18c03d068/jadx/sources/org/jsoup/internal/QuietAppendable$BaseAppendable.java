package org.jsoup.internal;

import androidx.compose.animation.core.Animation;
import coil3.network.HttpException;
import java.io.IOException;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        return Animation.CC.m23m((Object) sb) ? new QuietAppendable$BaseAppendable(sb, 1) : new QuietAppendable$BaseAppendable(sb, 0);
    }

    public final QuietAppendable$BaseAppendable append(String str) {
        int i = this.$r8$classId;
        Appendable appendable = this.a;
        switch (i) {
            case 0:
                try {
                    appendable.append(str);
                    return this;
                } catch (IOException e) {
                    throw new HttpException(e);
                }
            default:
                ((StringBuilder) appendable).append((CharSequence) str);
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
        int i = this.$r8$classId;
        Appendable appendable = this.a;
        switch (i) {
            case 0:
                try {
                    appendable.append(c);
                    return this;
                } catch (IOException e) {
                    throw new HttpException(e);
                }
            default:
                ((StringBuilder) appendable).append(c);
                return this;
        }
    }
}
