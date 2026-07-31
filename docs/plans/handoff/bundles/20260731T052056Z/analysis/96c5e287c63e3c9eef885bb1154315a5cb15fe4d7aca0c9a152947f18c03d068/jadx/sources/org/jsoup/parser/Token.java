package org.jsoup.parser;

import android.content.SharedPreferences;
import kotlin.random.XorWowRandom;
import okhttp3.FormBody;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Token {
    public int endPos = -1;
    public int startPos;
    public final Object type;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CData extends Character {
        @Override // org.jsoup.parser.Token.Character
        public final String toString() {
            return "<![CDATA[" + this.data.value() + "]]>";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Comment extends Token {
        public final FormBody.Builder data;

        public Comment() {
            super(TokenType.Comment);
            this.data = new FormBody.Builder(25, false);
        }

        public final void append(char c) {
            this.data.append(c);
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo889reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.data.reset();
        }

        public final String toString() {
            return "<!--" + this.data.value() + "-->";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Doctype extends Token {
        public boolean forceQuirks;
        public final FormBody.Builder internalSubset;
        public final FormBody.Builder name;
        public String pubSysKey;
        public final FormBody.Builder publicIdentifier;
        public final FormBody.Builder systemIdentifier;

        public Doctype() {
            super(TokenType.Doctype);
            int i = 25;
            boolean z = false;
            this.name = new FormBody.Builder(i, z);
            this.pubSysKey = null;
            this.publicIdentifier = new FormBody.Builder(i, z);
            this.systemIdentifier = new FormBody.Builder(i, z);
            this.internalSubset = new FormBody.Builder(i, z);
            this.forceQuirks = false;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo889reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.name.reset();
            this.pubSysKey = null;
            this.publicIdentifier.reset();
            this.systemIdentifier.reset();
            this.internalSubset.reset();
            this.forceQuirks = false;
        }

        public final String toString() {
            return "<!doctype " + this.name.value() + ">";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EOF extends Token {
        public EOF() {
            super(TokenType.EOF);
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo889reset() {
            this.startPos = -1;
            this.endPos = -1;
        }

        public final String toString() {
            return "";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EndTag extends Tag {
        public EndTag(HtmlTreeBuilder htmlTreeBuilder) {
            super(TokenType.EndTag, htmlTreeBuilder);
        }

        public final String toString() {
            return "</" + toStringName() + ">";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StartTag extends Tag {
        public StartTag(HtmlTreeBuilder htmlTreeBuilder) {
            super(TokenType.StartTag, htmlTreeBuilder);
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset, reason: merged with bridge method [inline-methods] */
        public final Tag mo889reset() {
            super.mo889reset();
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

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TokenType {
        private static final /* synthetic */ TokenType[] $VALUES;
        public static final TokenType Character;
        public static final TokenType Comment;
        public static final TokenType Doctype;
        public static final TokenType EOF;
        public static final TokenType EndTag;
        public static final TokenType StartTag;
        public static final TokenType XmlDecl;

        static {
            TokenType tokenType = new TokenType("Doctype", 0);
            Doctype = tokenType;
            TokenType tokenType2 = new TokenType("StartTag", 1);
            StartTag = tokenType2;
            TokenType tokenType3 = new TokenType("EndTag", 2);
            EndTag = tokenType3;
            TokenType tokenType4 = new TokenType("Comment", 3);
            Comment = tokenType4;
            TokenType tokenType5 = new TokenType("Character", 4);
            Character = tokenType5;
            TokenType tokenType6 = new TokenType("XmlDecl", 5);
            XmlDecl = tokenType6;
            TokenType tokenType7 = new TokenType("EOF", 6);
            EOF = tokenType7;
            $VALUES = new TokenType[]{tokenType, tokenType2, tokenType3, tokenType4, tokenType5, tokenType6, tokenType7};
        }

        public static TokenType valueOf(String str) {
            return (TokenType) Enum.valueOf(TokenType.class, str);
        }

        public static TokenType[] values() {
            return (TokenType[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class XmlDecl extends Tag {
        public boolean isDeclaration;

        @Override // org.jsoup.parser.Token.Tag
        /* renamed from: reset */
        public final /* bridge */ /* synthetic */ Tag mo889reset() {
            mo889reset();
            return this;
        }

        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        /* renamed from: reset$1, reason: merged with bridge method [inline-methods] */
        public final void mo889reset() {
            super.mo889reset();
            this.isDeclaration = true;
        }

        public final String toString() {
            boolean z = this.isDeclaration;
            String str = z ? "<!" : "<?";
            String str2 = z ? ">" : "?>";
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                return str + toStringName() + str2;
            }
            return str + toStringName() + " " + this.attributes.toString() + str2;
        }
    }

    public Token(int i, String str) {
        this.type = str;
        this.startPos = i;
    }

    public int getGroup() {
        String str = (String) this.type;
        int i = PrefsIoUtil.getPreferences().getInt("ab_test_".concat(str), -1);
        this.endPos = i;
        if (i == -1) {
            long currentTimeMillis = System.currentTimeMillis();
            int nextInt = new XorWowRandom((int) currentTimeMillis, (int) (currentTimeMillis >> 32)).nextInt(0, Integer.MAX_VALUE);
            int i2 = this.startPos;
            int i3 = nextInt % i2;
            this.endPos = i3 + (i2 & (((i3 ^ i2) & ((-i3) | i3)) >> 31));
            String concat = "ab_test_".concat(str);
            int i4 = this.endPos;
            SharedPreferences.Editor edit = PrefsIoUtil.getPreferences().edit();
            edit.getClass();
            edit.putInt(concat, i4).apply();
        }
        return this.endPos;
    }

    public boolean isComment() {
        return ((TokenType) this.type) == TokenType.Comment;
    }

    public boolean isDoctype() {
        return ((TokenType) this.type) == TokenType.Doctype;
    }

    public boolean isEOF() {
        return ((TokenType) this.type) == TokenType.EOF;
    }

    public boolean isEndTag() {
        return ((TokenType) this.type) == TokenType.EndTag;
    }

    public boolean isStartTag() {
        return ((TokenType) this.type) == TokenType.StartTag;
    }

    /* renamed from: reset */
    public abstract void mo889reset();

    public Token(TokenType tokenType) {
        this.type = tokenType;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class Character extends Token {
        public static final String nullString = String.valueOf((char) 0);
        public final FormBody.Builder data;

        public Character(Character character) {
            super(TokenType.Character);
            FormBody.Builder builder = new FormBody.Builder(25, false);
            this.data = builder;
            this.startPos = character.startPos;
            this.endPos = character.endPos;
            String value = character.data.value();
            builder.reset();
            builder.names = value;
        }

        @Override // org.jsoup.parser.Token
        /* renamed from: reset */
        public final void mo889reset() {
            this.startPos = -1;
            this.endPos = -1;
            this.data.reset();
        }

        public String toString() {
            return this.data.value();
        }

        public Character() {
            super(TokenType.Character);
            this.data = new FormBody.Builder(25, false);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Tag extends Token {
        public final FormBody.Builder attrName;
        public final FormBody.Builder attrValue;
        public Attributes attributes;
        public boolean hasEmptyAttrValue;
        public String normalName;
        public boolean selfClosing;
        public final FormBody.Builder tagName;

        public Tag(TokenType tokenType, HtmlTreeBuilder htmlTreeBuilder) {
            super(tokenType);
            this.tagName = new FormBody.Builder(25, false);
            this.selfClosing = false;
            int i = 25;
            boolean z = false;
            this.attrName = new FormBody.Builder(i, z);
            this.attrValue = new FormBody.Builder(i, z);
            this.hasEmptyAttrValue = false;
            htmlTreeBuilder.getClass();
        }

        public final void appendAttributeValue(int i, int i2, int[] iArr) {
            for (int i3 : iArr) {
                FormBody.Builder builder = this.attrValue;
                StringBuilder sb = (StringBuilder) builder.values;
                if (sb != null) {
                    sb.appendCodePoint(i3);
                } else if (((String) builder.names) != null) {
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    builder.values = borrowBuilder;
                    borrowBuilder.append((String) builder.names);
                    builder.names = null;
                    ((StringBuilder) builder.values).appendCodePoint(i3);
                } else {
                    builder.names = String.valueOf(java.lang.Character.toChars(i3));
                }
            }
        }

        public final void appendTagName(String str) {
            String replace = str.replace((char) 0, (char) 65533);
            FormBody.Builder builder = this.tagName;
            builder.append(replace);
            this.normalName = QuietAppendable$BaseAppendable.normalize(builder.value());
        }

        public final void name(String str) {
            FormBody.Builder builder = this.tagName;
            builder.reset();
            builder.names = str;
            this.normalName = QuietAppendable$BaseAppendable.normalize(builder.value());
        }

        public final void newAttribute() {
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            FormBody.Builder builder = this.attrName;
            boolean hasData = builder.hasData();
            FormBody.Builder builder2 = this.attrValue;
            if (hasData && this.attributes.size() < 512) {
                String trim = builder.value().trim();
                if (!trim.isEmpty()) {
                    this.attributes.addObject(trim, builder2.hasData() ? builder2.value() : this.hasEmptyAttrValue ? "" : null);
                }
            }
            builder.reset();
            builder2.reset();
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
        public Tag mo889reset() {
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
