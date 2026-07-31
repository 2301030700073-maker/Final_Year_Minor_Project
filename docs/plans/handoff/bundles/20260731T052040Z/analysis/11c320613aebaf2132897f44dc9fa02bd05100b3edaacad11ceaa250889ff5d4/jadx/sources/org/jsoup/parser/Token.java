package org.jsoup.parser;

import androidx.compose.ui.node.Owner;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Token {
    public int endPos = -1;
    public int startPos;
    public final int type;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CData extends Character {
        @Override // org.jsoup.parser.Token.Character
        public final String toString() {
            return "<![CDATA[" + this.data.value() + "]]>";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Comment extends Token {
        public final TokenData data;

        public Comment() {
            super(4);
            this.data = new TokenData(0);
        }

        public final void append(char c) {
            this.data.append(c);
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo741reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.data.reset();
        }

        public final String toString() {
            return "<!--" + this.data.value() + "-->";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Doctype extends Token {
        public boolean forceQuirks;
        public final TokenData internalSubset;
        public final TokenData name;
        public String pubSysKey;
        public final TokenData publicIdentifier;
        public boolean sawInternalSubset;
        public final TokenData systemIdentifier;

        public Doctype() {
            super(1);
            int i = 0;
            this.name = new TokenData(i);
            this.pubSysKey = null;
            this.publicIdentifier = new TokenData(i);
            this.systemIdentifier = new TokenData(i);
            this.internalSubset = new TokenData(i);
            this.sawInternalSubset = false;
            this.forceQuirks = false;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo741reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.name.reset();
            this.pubSysKey = null;
            this.publicIdentifier.reset();
            this.systemIdentifier.reset();
            this.internalSubset.reset();
            this.sawInternalSubset = false;
            this.forceQuirks = false;
        }

        public final String toString() {
            return "<!doctype " + this.name.value() + ">";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EOF extends Token {
        public EOF() {
            super(7);
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo741reset() {
            this.startPos = -1;
            this.endPos = -1;
        }

        public final String toString() {
            return "";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndTag extends Tag {
        public final String toString() {
            return "</" + toStringName() + ">";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StartTag extends Tag {
        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset, reason: merged with bridge method [inline-methods] */
        public final Tag mo741reset() {
            super.mo741reset();
            this.attributes = null;
            return this;
        }

        public final String toString() {
            String str = this.selfClosing ? "/>" : ">";
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                return "<" + toStringName() + str;
            }
            return "<" + toStringName() + " " + this.attributes.toString() + str;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class XmlDecl extends Tag {
        public boolean isDeclaration;

        @Override // org.jsoup.parser.Token.Tag
        /* renamed from: reset */
        public final /* bridge */ /* synthetic */ Tag mo741reset() {
            mo741reset();
            return this;
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset$1, reason: merged with bridge method [inline-methods] */
        public final void mo741reset() {
            super.mo741reset();
            this.isDeclaration = true;
        }

        public final String toString() {
            boolean z = this.isDeclaration;
            String str = z ? "<!" : "<?";
            String str2 = z ? ">" : "?>";
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                StringBuilder m = Owner.CC.m(str);
                m.append(toStringName());
                m.append(str2);
                return m.toString();
            }
            StringBuilder m2 = Owner.CC.m(str);
            m2.append(toStringName());
            m2.append(" ");
            m2.append(this.attributes.toString());
            m2.append(str2);
            return m2.toString();
        }
    }

    public Token(int i) {
        this.type = i;
    }

    public final boolean isComment() {
        return this.type == 4;
    }

    public final boolean isDoctype() {
        return this.type == 1;
    }

    public final boolean isEOF() {
        return this.type == 7;
    }

    public final boolean isEndTag() {
        return this.type == 3;
    }

    public final boolean isStartTag() {
        return this.type == 2;
    }

    /* renamed from: reset */
    public abstract void mo741reset();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Character extends Token {
        public static final String nullString = String.valueOf((char) 0);
        public final TokenData data;

        public Character(Character character) {
            super(5);
            TokenData tokenData = new TokenData(0);
            this.data = tokenData;
            this.startPos = character.startPos;
            this.endPos = character.endPos;
            String value = character.data.value();
            tokenData.reset();
            tokenData.value = value;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo741reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.data.reset();
        }

        public String toString() {
            return this.data.value();
        }

        public Character() {
            super(5);
            this.data = new TokenData(0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Tag extends Token {
        public final TokenData attrName;
        public final TokenData attrValue;
        public Attributes attributes;
        public boolean hasEmptyAttrValue;
        public String normalName;
        public boolean selfClosing;
        public final TokenData tagName;

        public Tag(int i, TreeBuilder treeBuilder) {
            super(i);
            this.tagName = new TokenData(0);
            this.selfClosing = false;
            int i2 = 0;
            this.attrName = new TokenData(i2);
            this.attrValue = new TokenData(i2);
            this.hasEmptyAttrValue = false;
            treeBuilder.getClass();
        }

        public final void appendAttributeValue(int i, int i2, int[] iArr) {
            for (int i3 : iArr) {
                TokenData tokenData = this.attrValue;
                StringBuilder sb = (StringBuilder) tokenData.builder;
                if (sb != null) {
                    sb.appendCodePoint(i3);
                } else if (((String) tokenData.value) != null) {
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    tokenData.builder = borrowBuilder;
                    borrowBuilder.append((String) tokenData.value);
                    tokenData.value = null;
                    ((StringBuilder) tokenData.builder).appendCodePoint(i3);
                } else {
                    tokenData.value = String.valueOf(java.lang.Character.toChars(i3));
                }
            }
        }

        public final void appendTagName(String str) {
            String replace = str.replace((char) 0, (char) 65533);
            TokenData tokenData = this.tagName;
            tokenData.append(replace);
            this.normalName = QuietAppendable$BaseAppendable.normalize(tokenData.value());
        }

        public final void name(String str) {
            TokenData tokenData = this.tagName;
            tokenData.reset();
            tokenData.value = str;
            this.normalName = QuietAppendable$BaseAppendable.normalize(tokenData.value());
        }

        public final void newAttribute() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            TokenData tokenData = this.attrName;
            boolean hasData = tokenData.hasData();
            TokenData tokenData2 = this.attrValue;
            if (hasData && this.attributes.size() < 512) {
                String trim = tokenData.value().trim();
                if (!trim.isEmpty()) {
                    this.attributes.addObject(trim, tokenData2.hasData() ? tokenData2.value() : this.hasEmptyAttrValue ? "" : null);
                }
            }
            tokenData.reset();
            tokenData2.reset();
            this.hasEmptyAttrValue = false;
        }

        public final String normalName() {
            String str = this.normalName;
            if (str == null || str.isEmpty()) {
                throw new ValidationException("Must be false");
            }
            return this.normalName;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public Tag mo741reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.tagName.reset();
            this.normalName = null;
            this.selfClosing = false;
            this.attributes = null;
            this.attrName.reset();
            this.attrValue.reset();
            this.hasEmptyAttrValue = false;
            return this;
        }

        public final String toStringName() {
            String value = this.tagName.value();
            return value.isEmpty() ? "[unset]" : value;
        }

        public final void appendAttributeValue(char c, int i, int i2) {
            this.attrValue.append(c);
        }
    }
}
