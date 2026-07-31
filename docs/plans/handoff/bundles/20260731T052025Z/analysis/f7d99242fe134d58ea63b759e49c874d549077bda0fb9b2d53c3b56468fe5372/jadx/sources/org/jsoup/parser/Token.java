package org.jsoup.parser;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.Functions;
import org.jsoup.nodes.Attributes;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Token {
    public final int type;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CData extends Character {
        @Override // org.jsoup.parser.Token.Character
        public final String toString() {
            return CameraDevices$CC.m(new StringBuilder("<![CDATA["), this.data, "]]>");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class Character extends Token implements Cloneable {
        public String data;

        public final Character clone() {
            try {
                return (Character) super.clone();
            } catch (CloneNotSupportedException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo1084reset() {
            this.data = null;
        }

        public String toString() {
            return this.data;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Doctype extends Token {
        public boolean forceQuirks;
        public final StringBuilder name;
        public String pubSysKey;
        public final StringBuilder publicIdentifier;
        public final StringBuilder systemIdentifier;

        public Doctype() {
            super(1);
            this.name = new StringBuilder();
            this.pubSysKey = null;
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo1084reset() {
            Token.reset(this.name);
            this.pubSysKey = null;
            Token.reset(this.publicIdentifier);
            Token.reset(this.systemIdentifier);
            this.forceQuirks = false;
        }

        public final String toString() {
            return "<!doctype " + this.name.toString() + ">";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EndTag extends Tag {
        public final String toString() {
            StringBuilder sb = new StringBuilder("</");
            String str = this.tagName;
            if (str == null) {
                str = "[unset]";
            }
            return CameraDevices$CC.m(sb, str, ">");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StartTag extends Tag {
        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset, reason: merged with bridge method [inline-methods] */
        public final Tag mo1084reset() {
            super.mo1084reset();
            this.attributes = null;
            return this;
        }

        public final String toString() {
            String str = this.selfClosing ? "/>" : ">";
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size <= 0) {
                StringBuilder sb = new StringBuilder("<");
                String str2 = this.tagName;
                return CameraDevices$CC.m(sb, str2 != null ? str2 : "[unset]", str);
            }
            StringBuilder sb2 = new StringBuilder("<");
            String str3 = this.tagName;
            sb2.append(str3 != null ? str3 : "[unset]");
            sb2.append(" ");
            sb2.append(this.attributes.toString());
            sb2.append(str);
            return sb2.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class XmlDecl extends Tag {
        public boolean isDeclaration;

        @Override // org.jsoup.parser.Token.Tag
        /* renamed from: reset */
        public final /* bridge */ /* synthetic */ Tag mo1084reset() {
            mo1084reset();
            return this;
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset$1, reason: merged with bridge method [inline-methods] */
        public final void mo1084reset() {
            super.mo1084reset();
            this.isDeclaration = true;
        }

        public final String toString() {
            boolean z = this.isDeclaration;
            String str = z ? "<!" : "<?";
            String str2 = z ? ">" : "?>";
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size <= 0) {
                StringBuilder m = Modifier.CC.m(str);
                String str3 = this.tagName;
                return CameraDevices$CC.m(m, str3 != null ? str3 : "[unset]", str2);
            }
            StringBuilder m2 = Modifier.CC.m(str);
            String str4 = this.tagName;
            m2.append(str4 != null ? str4 : "[unset]");
            m2.append(" ");
            m2.append(this.attributes.toString());
            m2.append(str2);
            return m2.toString();
        }
    }

    public /* synthetic */ Token(int i) {
        this.type = i;
    }

    public static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public abstract int getParentBottom();

    public abstract int getParentLeft();

    public abstract int getParentRight();

    public abstract int getParentStart();

    public abstract int getParentTop();

    public boolean isComment() {
        return this.type == 4;
    }

    public boolean isDoctype() {
        return this.type == 1;
    }

    public boolean isEOF() {
        return this.type == 7;
    }

    public boolean isEndTag() {
        return this.type == 3;
    }

    public boolean isStartTag() {
        return this.type == 2;
    }

    /* renamed from: reset */
    public abstract void mo1084reset();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Tag extends Token {
        public String attrName;
        public final StringBuilder attrNameSb;
        public String attrValue;
        public final StringBuilder attrValueSb;
        public Attributes attributes;
        public boolean hasAttrName;
        public boolean hasAttrValue;
        public boolean hasEmptyAttrValue;
        public String normalName;
        public boolean selfClosing;
        public String tagName;

        public Tag(int i, HtmlTreeBuilder htmlTreeBuilder) {
            super(i);
            this.selfClosing = false;
            this.attrNameSb = new StringBuilder();
            this.hasAttrName = false;
            this.attrValueSb = new StringBuilder();
            this.hasAttrValue = false;
            this.hasEmptyAttrValue = false;
            htmlTreeBuilder.getClass();
        }

        public final void appendAttributeValue(int i, String str, int i2) {
            ensureAttrValue(i, i2);
            StringBuilder sb = this.attrValueSb;
            if (sb.length() == 0) {
                this.attrValue = str;
            } else {
                sb.append(str);
            }
        }

        public final void appendTagName(String str) {
            String replace = str.replace((char) 0, (char) 65533);
            String str2 = this.tagName;
            this.tagName = str2 == null ? replace : str2.concat(replace);
            String normalize = Functions.normalize(replace);
            String str3 = this.normalName;
            if (str3 != null) {
                normalize = str3.concat(normalize);
            }
            this.normalName = normalize;
        }

        public final void ensureAttrName(int i, int i2) {
            this.hasAttrName = true;
            String str = this.attrName;
            if (str != null) {
                this.attrNameSb.append(str);
                this.attrName = null;
            }
        }

        public final void ensureAttrValue(int i, int i2) {
            this.hasAttrValue = true;
            String str = this.attrValue;
            if (str != null) {
                this.attrValueSb.append(str);
                this.attrValue = null;
            }
        }

        public final void name(String str) {
            this.tagName = str;
            this.normalName = Functions.normalize(str);
        }

        public final void newAttribute() {
            String str;
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            if (this.hasAttrName && this.attributes.size < 512) {
                StringBuilder sb = this.attrNameSb;
                String trim = (sb.length() > 0 ? sb.toString() : this.attrName).trim();
                if (trim.length() > 0) {
                    if (this.hasAttrValue) {
                        StringBuilder sb2 = this.attrValueSb;
                        str = sb2.length() > 0 ? sb2.toString() : this.attrValue;
                    } else {
                        str = this.hasEmptyAttrValue ? "" : null;
                    }
                    this.attributes.addObject(trim, str);
                }
            }
            resetPendingAttr();
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public Tag mo1084reset() {
            this.tagName = null;
            this.normalName = null;
            this.selfClosing = false;
            this.attributes = null;
            resetPendingAttr();
            return this;
        }

        public final void resetPendingAttr() {
            Token.reset(this.attrNameSb);
            this.attrName = null;
            this.hasAttrName = false;
            Token.reset(this.attrValueSb);
            this.attrValue = null;
            this.hasEmptyAttrValue = false;
            this.hasAttrValue = false;
        }

        public final void appendAttributeValue(char c, int i, int i2) {
            ensureAttrValue(i, i2);
            this.attrValueSb.append(c);
        }

        public final void appendAttributeValue(int i, int i2, int[] iArr) {
            ensureAttrValue(i, i2);
            for (int i3 : iArr) {
                this.attrValueSb.appendCodePoint(i3);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EOF extends Token {
        public EOF() {
            super(7);
        }

        public final String toString() {
            return "";
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo1084reset() {
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Comment extends Token {
        public final StringBuilder data;
        public String dataS;

        public Comment() {
            super(4);
            this.data = new StringBuilder();
        }

        public final void append(String str) {
            String str2 = this.dataS;
            StringBuilder sb = this.data;
            if (str2 != null) {
                sb.append(str2);
                this.dataS = null;
            }
            if (sb.length() == 0) {
                this.dataS = str;
            } else {
                sb.append(str);
            }
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo1084reset() {
            Token.reset(this.data);
            this.dataS = null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("<!--");
            String str = this.dataS;
            if (str == null) {
                str = this.data.toString();
            }
            return CameraDevices$CC.m(sb, str, "-->");
        }

        public final void append(char c) {
            String str = this.dataS;
            StringBuilder sb = this.data;
            if (str != null) {
                sb.append(str);
                this.dataS = null;
            }
            sb.append(c);
        }
    }
}
