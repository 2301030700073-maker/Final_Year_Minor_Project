package com.caverock.androidsvg;

import android.text.Editable;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.widget.SearchView;
import androidx.cardview.widget.CardView;
import androidx.collection.LongSparseArray;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import com.caverock.androidsvg.SVG;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CSSParser implements MouseSelectionObserver, KotlinTypeChecker.TypeConstructorEquality {
    public Object deviceMediaType;
    public boolean inMediaRule;
    public final Object source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.caverock.androidsvg.CSSParser$1, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp;
        public static final /* synthetic */ int[] $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents;

        static {
            int[] iArr = new int[PseudoClassIdents.values().length];
            $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents = iArr;
            try {
                iArr[PseudoClassIdents.first_child.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.last_child.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.only_child.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.first_of_type.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.last_of_type.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.only_of_type.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.root.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.empty.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_child.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_last_child.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_of_type.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.nth_last_of_type.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.not.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.target.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.lang.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.link.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.visited.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.hover.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.active.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.focus.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.enabled.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.disabled.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.checked.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents[PseudoClassIdents.indeterminate.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr2 = new int[AttribOp.values().length];
            $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp = iArr2;
            try {
                iArr2[AttribOp.EQUALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[AttribOp.INCLUDES.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[AttribOp.DASHMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Attrib {
        public final String name;
        public final AttribOp operation;
        public final String value;

        public Attrib(String str, AttribOp attribOp, String str2) {
            this.name = str;
            this.operation = attribOp;
            this.value = str2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AttribOp {
        private static final /* synthetic */ AttribOp[] $VALUES;
        public static final AttribOp DASHMATCH;
        public static final AttribOp EQUALS;
        public static final AttribOp EXISTS;
        public static final AttribOp INCLUDES;

        static {
            AttribOp attribOp = new AttribOp("EXISTS", 0);
            EXISTS = attribOp;
            AttribOp attribOp2 = new AttribOp("EQUALS", 1);
            EQUALS = attribOp2;
            AttribOp attribOp3 = new AttribOp("INCLUDES", 2);
            INCLUDES = attribOp3;
            AttribOp attribOp4 = new AttribOp("DASHMATCH", 3);
            DASHMATCH = attribOp4;
            $VALUES = new AttribOp[]{attribOp, attribOp2, attribOp3, attribOp4};
        }

        public static AttribOp valueOf(String str) {
            return (AttribOp) Enum.valueOf(AttribOp.class, str);
        }

        public static AttribOp[] values() {
            return (AttribOp[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CSSTextScanner extends SVG.PathDefinition {
        public CSSTextScanner(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", ""));
        }

        public static int hexChar(int i) {
            if (i >= 48 && i <= 57) {
                return i - 48;
            }
            if (i >= 65 && i <= 70) {
                return i - 55;
            }
            if (i < 97 || i > 102) {
                return -1;
            }
            return i - 87;
        }

        public final String nextCSSString() {
            int hexChar;
            if (empty()) {
                return null;
            }
            char charAt = ((String) this.commands).charAt(this.commandsLength);
            if (charAt != '\'' && charAt != '\"') {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            this.commandsLength++;
            int intValue = nextChar().intValue();
            while (intValue != -1 && intValue != charAt) {
                if (intValue == 92) {
                    intValue = nextChar().intValue();
                    if (intValue != -1) {
                        if (intValue == 10 || intValue == 13 || intValue == 12) {
                            intValue = nextChar().intValue();
                        } else {
                            int hexChar2 = hexChar(intValue);
                            if (hexChar2 != -1) {
                                for (int i = 1; i <= 5 && (hexChar = hexChar((intValue = nextChar().intValue()))) != -1; i++) {
                                    hexChar2 = (hexChar2 * 16) + hexChar;
                                }
                                sb.append((char) hexChar2);
                            }
                        }
                    }
                }
                sb.append((char) intValue);
                intValue = nextChar().intValue();
            }
            return sb.toString();
        }

        public final String nextIdentifier() {
            int i;
            String str = (String) this.commands;
            boolean empty = empty();
            int i2 = this.commandsLength;
            if (empty) {
                i = i2;
            } else {
                int charAt = str.charAt(i2);
                if (charAt == 45) {
                    charAt = advanceChar();
                }
                if ((charAt < 65 || charAt > 90) && ((charAt < 97 || charAt > 122) && charAt != 95)) {
                    i = i2;
                } else {
                    int advanceChar = advanceChar();
                    while (true) {
                        if ((advanceChar < 65 || advanceChar > 90) && ((advanceChar < 97 || advanceChar > 122) && !((advanceChar >= 48 && advanceChar <= 57) || advanceChar == 45 || advanceChar == 95))) {
                            break;
                        }
                        advanceChar = advanceChar();
                    }
                    i = this.commandsLength;
                }
                this.commandsLength = i2;
            }
            if (i == i2) {
                return null;
            }
            String substring = str.substring(i2, i);
            this.commandsLength = i;
            return substring;
        }

        /* JADX WARN: Code restructure failed: missing block: B:217:0x046d, code lost:
        
            r0 = r4.simpleSelectors;
         */
        /* JADX WARN: Code restructure failed: missing block: B:218:0x046f, code lost:
        
            if (r0 == null) goto L266;
         */
        /* JADX WARN: Code restructure failed: missing block: B:220:0x0475, code lost:
        
            if (r0.isEmpty() == false) goto L265;
         */
        /* JADX WARN: Code restructure failed: missing block: B:221:0x0478, code lost:
        
            r1.add(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:222:0x047b, code lost:
        
            return r1;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:134:0x036d  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0388 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0367  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:206:0x044a  */
        /* JADX WARN: Removed duplicated region for block: B:215:0x046b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:284:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x042e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0247  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x026e A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r11v12, types: [com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r11v40 */
        /* JADX WARN: Type inference failed for: r11v41 */
        /* JADX WARN: Type inference failed for: r20v1 */
        /* JADX WARN: Type inference failed for: r20v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Type inference failed for: r21v1 */
        /* JADX WARN: Type inference failed for: r21v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Type inference failed for: r2v12, types: [com.caverock.androidsvg.CSSParser$PseudoClassOnlyChild] */
        /* JADX WARN: Type inference failed for: r2v16, types: [com.caverock.androidsvg.CSSParser$PseudoClassOnlyChild] */
        /* JADX WARN: Type inference failed for: r2v17, types: [com.caverock.androidsvg.CSSParser$PseudoClassRoot] */
        /* JADX WARN: Type inference failed for: r2v18, types: [com.caverock.androidsvg.CSSParser$PseudoClassRoot] */
        /* JADX WARN: Type inference failed for: r2v50, types: [com.caverock.androidsvg.CSSParser$PseudoClassRoot] */
        /* JADX WARN: Type inference failed for: r2v51, types: [com.caverock.androidsvg.CSSParser$PseudoClassNotSupported] */
        /* JADX WARN: Type inference failed for: r2v63, types: [com.caverock.androidsvg.CSSParser$PseudoClassNotSupported] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v2, types: [com.caverock.androidsvg.CSSParser$Combinator] */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Type inference failed for: r7v9, types: [boolean] */
        /* JADX WARN: Type inference failed for: r8v10, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v12, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v13, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v14, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v15, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v20, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v24 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v35 */
        /* JADX WARN: Type inference failed for: r8v36 */
        /* JADX WARN: Type inference failed for: r8v37 */
        /* JADX WARN: Type inference failed for: r8v38 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v9, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r9v20, types: [com.caverock.androidsvg.CSSParser$PseudoClassNot, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.ArrayList nextSelectorGroup() {
            /*
                Method dump skipped, instructions count: 1200
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.CSSTextScanner.nextSelectorGroup():java.util.ArrayList");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Combinator {
        private static final /* synthetic */ Combinator[] $VALUES;
        public static final Combinator CHILD;
        public static final Combinator DESCENDANT;
        public static final Combinator FOLLOWS;

        static {
            Combinator combinator = new Combinator("DESCENDANT", 0);
            DESCENDANT = combinator;
            Combinator combinator2 = new Combinator("CHILD", 1);
            CHILD = combinator2;
            Combinator combinator3 = new Combinator("FOLLOWS", 2);
            FOLLOWS = combinator3;
            $VALUES = new Combinator[]{combinator, combinator2, combinator3};
        }

        public static Combinator valueOf(String str) {
            return (Combinator) Enum.valueOf(Combinator.class, str);
        }

        public static Combinator[] values() {
            return (Combinator[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MediaType {
        private static final /* synthetic */ MediaType[] $VALUES;
        public static final MediaType all;
        public static final MediaType aural;
        public static final MediaType braille;
        public static final MediaType embossed;
        public static final MediaType handheld;
        public static final MediaType print;
        public static final MediaType projection;
        public static final MediaType screen;
        public static final MediaType speech;
        public static final MediaType tty;
        public static final MediaType tv;

        static {
            MediaType mediaType = new MediaType("all", 0);
            all = mediaType;
            MediaType mediaType2 = new MediaType("aural", 1);
            aural = mediaType2;
            MediaType mediaType3 = new MediaType("braille", 2);
            braille = mediaType3;
            MediaType mediaType4 = new MediaType("embossed", 3);
            embossed = mediaType4;
            MediaType mediaType5 = new MediaType("handheld", 4);
            handheld = mediaType5;
            MediaType mediaType6 = new MediaType("print", 5);
            print = mediaType6;
            MediaType mediaType7 = new MediaType("projection", 6);
            projection = mediaType7;
            MediaType mediaType8 = new MediaType("screen", 7);
            screen = mediaType8;
            MediaType mediaType9 = new MediaType("speech", 8);
            speech = mediaType9;
            MediaType mediaType10 = new MediaType("tty", 9);
            tty = mediaType10;
            MediaType mediaType11 = new MediaType("tv", 10);
            tv = mediaType11;
            $VALUES = new MediaType[]{mediaType, mediaType2, mediaType3, mediaType4, mediaType5, mediaType6, mediaType7, mediaType8, mediaType9, mediaType10, mediaType11};
        }

        public static MediaType valueOf(String str) {
            return (MediaType) Enum.valueOf(MediaType.class, str);
        }

        public static MediaType[] values() {
            return (MediaType[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface PseudoClass {
        boolean matches(SVG.SvgElementBase svgElementBase);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassAnPlusB implements PseudoClass {
        public final int a;
        public final int b;
        public final boolean isFromStart;
        public final boolean isOfType;
        public final String nodeName;

        public PseudoClassAnPlusB(int i, int i2, boolean z, boolean z2, String str) {
            this.a = i;
            this.b = i2;
            this.isFromStart = z;
            this.isOfType = z2;
            this.nodeName = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0065 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0064 A[RETURN] */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean matches(com.caverock.androidsvg.SVG.SvgElementBase r8) {
            /*
                r7 = this;
                boolean r0 = r7.isOfType
                java.lang.String r1 = r7.nodeName
                if (r0 == 0) goto Lc
                if (r1 != 0) goto Lc
                java.lang.String r1 = r8.getNodeName()
            Lc:
                com.caverock.androidsvg.SVG$SvgContainer r0 = r8.parent
                r2 = 0
                r3 = 1
                if (r0 == 0) goto L3c
                java.util.List r0 = r0.getChildren()
                java.util.Iterator r0 = r0.iterator()
                r4 = r2
                r5 = r4
            L1c:
                boolean r6 = r0.hasNext()
                if (r6 == 0) goto L3e
                java.lang.Object r6 = r0.next()
                com.caverock.androidsvg.SVG$SvgObject r6 = (com.caverock.androidsvg.SVG.SvgObject) r6
                com.caverock.androidsvg.SVG$SvgElementBase r6 = (com.caverock.androidsvg.SVG.SvgElementBase) r6
                if (r6 != r8) goto L2d
                r4 = r5
            L2d:
                if (r1 == 0) goto L39
                java.lang.String r6 = r6.getNodeName()
                boolean r6 = r6.equals(r1)
                if (r6 == 0) goto L1c
            L39:
                int r5 = r5 + 1
                goto L1c
            L3c:
                r4 = r2
                r5 = r3
            L3e:
                boolean r8 = r7.isFromStart
                if (r8 == 0) goto L44
                int r4 = r4 + r3
                goto L46
            L44:
                int r4 = r5 - r4
            L46:
                int r8 = r7.b
                int r7 = r7.a
                if (r7 != 0) goto L4f
                if (r4 != r8) goto L65
                goto L64
            L4f:
                int r4 = r4 - r8
                int r8 = r4 % r7
                if (r8 != 0) goto L65
                int r8 = java.lang.Integer.signum(r4)
                if (r8 == 0) goto L64
                int r8 = java.lang.Integer.signum(r4)
                int r7 = java.lang.Integer.signum(r7)
                if (r8 != r7) goto L65
            L64:
                return r3
            L65:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.PseudoClassAnPlusB.matches(com.caverock.androidsvg.SVG$SvgElementBase):boolean");
        }

        public final String toString() {
            String str = this.isFromStart ? "" : "last-";
            int i = this.b;
            boolean z = this.isOfType;
            int i2 = this.a;
            return z ? String.format("nth-%schild(%dn%+d of type <%s>)", str, Integer.valueOf(i2), Integer.valueOf(i), this.nodeName) : String.format("nth-%schild(%dn%+d)", str, Integer.valueOf(i2), Integer.valueOf(i));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassIdents {
        private static final /* synthetic */ PseudoClassIdents[] $VALUES;
        public static final PseudoClassIdents UNSUPPORTED;
        public static final PseudoClassIdents active;
        private static final Map<String, PseudoClassIdents> cache;
        public static final PseudoClassIdents checked;
        public static final PseudoClassIdents disabled;
        public static final PseudoClassIdents empty;
        public static final PseudoClassIdents enabled;
        public static final PseudoClassIdents first_child;
        public static final PseudoClassIdents first_of_type;
        public static final PseudoClassIdents focus;
        public static final PseudoClassIdents hover;
        public static final PseudoClassIdents indeterminate;
        public static final PseudoClassIdents lang;
        public static final PseudoClassIdents last_child;
        public static final PseudoClassIdents last_of_type;
        public static final PseudoClassIdents link;
        public static final PseudoClassIdents not;
        public static final PseudoClassIdents nth_child;
        public static final PseudoClassIdents nth_last_child;
        public static final PseudoClassIdents nth_last_of_type;
        public static final PseudoClassIdents nth_of_type;
        public static final PseudoClassIdents only_child;
        public static final PseudoClassIdents only_of_type;
        public static final PseudoClassIdents root;
        public static final PseudoClassIdents target;
        public static final PseudoClassIdents visited;

        static {
            PseudoClassIdents pseudoClassIdents = new PseudoClassIdents("target", 0);
            target = pseudoClassIdents;
            PseudoClassIdents pseudoClassIdents2 = new PseudoClassIdents("root", 1);
            root = pseudoClassIdents2;
            PseudoClassIdents pseudoClassIdents3 = new PseudoClassIdents("nth_child", 2);
            nth_child = pseudoClassIdents3;
            PseudoClassIdents pseudoClassIdents4 = new PseudoClassIdents("nth_last_child", 3);
            nth_last_child = pseudoClassIdents4;
            PseudoClassIdents pseudoClassIdents5 = new PseudoClassIdents("nth_of_type", 4);
            nth_of_type = pseudoClassIdents5;
            PseudoClassIdents pseudoClassIdents6 = new PseudoClassIdents("nth_last_of_type", 5);
            nth_last_of_type = pseudoClassIdents6;
            PseudoClassIdents pseudoClassIdents7 = new PseudoClassIdents("first_child", 6);
            first_child = pseudoClassIdents7;
            PseudoClassIdents pseudoClassIdents8 = new PseudoClassIdents("last_child", 7);
            last_child = pseudoClassIdents8;
            PseudoClassIdents pseudoClassIdents9 = new PseudoClassIdents("first_of_type", 8);
            first_of_type = pseudoClassIdents9;
            PseudoClassIdents pseudoClassIdents10 = new PseudoClassIdents("last_of_type", 9);
            last_of_type = pseudoClassIdents10;
            PseudoClassIdents pseudoClassIdents11 = new PseudoClassIdents("only_child", 10);
            only_child = pseudoClassIdents11;
            PseudoClassIdents pseudoClassIdents12 = new PseudoClassIdents("only_of_type", 11);
            only_of_type = pseudoClassIdents12;
            PseudoClassIdents pseudoClassIdents13 = new PseudoClassIdents("empty", 12);
            empty = pseudoClassIdents13;
            PseudoClassIdents pseudoClassIdents14 = new PseudoClassIdents("not", 13);
            not = pseudoClassIdents14;
            PseudoClassIdents pseudoClassIdents15 = new PseudoClassIdents("lang", 14);
            lang = pseudoClassIdents15;
            PseudoClassIdents pseudoClassIdents16 = new PseudoClassIdents("link", 15);
            link = pseudoClassIdents16;
            PseudoClassIdents pseudoClassIdents17 = new PseudoClassIdents("visited", 16);
            visited = pseudoClassIdents17;
            PseudoClassIdents pseudoClassIdents18 = new PseudoClassIdents("hover", 17);
            hover = pseudoClassIdents18;
            PseudoClassIdents pseudoClassIdents19 = new PseudoClassIdents("active", 18);
            active = pseudoClassIdents19;
            PseudoClassIdents pseudoClassIdents20 = new PseudoClassIdents("focus", 19);
            focus = pseudoClassIdents20;
            PseudoClassIdents pseudoClassIdents21 = new PseudoClassIdents("enabled", 20);
            enabled = pseudoClassIdents21;
            PseudoClassIdents pseudoClassIdents22 = new PseudoClassIdents("disabled", 21);
            disabled = pseudoClassIdents22;
            PseudoClassIdents pseudoClassIdents23 = new PseudoClassIdents("checked", 22);
            checked = pseudoClassIdents23;
            PseudoClassIdents pseudoClassIdents24 = new PseudoClassIdents("indeterminate", 23);
            indeterminate = pseudoClassIdents24;
            PseudoClassIdents pseudoClassIdents25 = new PseudoClassIdents("UNSUPPORTED", 24);
            UNSUPPORTED = pseudoClassIdents25;
            $VALUES = new PseudoClassIdents[]{pseudoClassIdents, pseudoClassIdents2, pseudoClassIdents3, pseudoClassIdents4, pseudoClassIdents5, pseudoClassIdents6, pseudoClassIdents7, pseudoClassIdents8, pseudoClassIdents9, pseudoClassIdents10, pseudoClassIdents11, pseudoClassIdents12, pseudoClassIdents13, pseudoClassIdents14, pseudoClassIdents15, pseudoClassIdents16, pseudoClassIdents17, pseudoClassIdents18, pseudoClassIdents19, pseudoClassIdents20, pseudoClassIdents21, pseudoClassIdents22, pseudoClassIdents23, pseudoClassIdents24, pseudoClassIdents25};
            cache = new HashMap();
            for (PseudoClassIdents pseudoClassIdents26 : values()) {
                if (pseudoClassIdents26 != UNSUPPORTED) {
                    cache.put(pseudoClassIdents26.name().replace('_', '-'), pseudoClassIdents26);
                }
            }
        }

        public static PseudoClassIdents fromString(String str) {
            PseudoClassIdents pseudoClassIdents = cache.get(str);
            return pseudoClassIdents != null ? pseudoClassIdents : UNSUPPORTED;
        }

        public static PseudoClassIdents valueOf(String str) {
            return (PseudoClassIdents) Enum.valueOf(PseudoClassIdents.class, str);
        }

        public static PseudoClassIdents[] values() {
            return (PseudoClassIdents[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassNot implements PseudoClass {
        public List selectorGroup;

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean matches(SVG.SvgElementBase svgElementBase) {
            Iterator it = this.selectorGroup.iterator();
            while (it.hasNext()) {
                if (CSSParser.ruleMatch((Selector) it.next(), svgElementBase)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return "not(" + this.selectorGroup + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassNotSupported implements PseudoClass {
        public final String clazz;

        public PseudoClassNotSupported(String str) {
            this.clazz = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean matches(SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public final String toString() {
            return this.clazz;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassOnlyChild implements PseudoClass {
        public final boolean isOfType;
        public final String nodeName;

        public PseudoClassOnlyChild(String str, boolean z) {
            this.isOfType = z;
            this.nodeName = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean matches(SVG.SvgElementBase svgElementBase) {
            int i;
            boolean z = this.isOfType;
            String str = this.nodeName;
            if (z && str == null) {
                str = svgElementBase.getNodeName();
            }
            SVG.SvgContainer svgContainer = svgElementBase.parent;
            if (svgContainer != null) {
                Iterator it = svgContainer.getChildren().iterator();
                i = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) ((SVG.SvgObject) it.next());
                    if (str == null || svgElementBase2.getNodeName().equals(str)) {
                        i++;
                    }
                }
            } else {
                i = 1;
            }
            return i == 1;
        }

        public final String toString() {
            return this.isOfType ? Animation.CC.m("only-of-type <", this.nodeName, ">") : "only-child";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PseudoClassRoot implements PseudoClass {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ PseudoClassRoot(int i) {
            this.$r8$classId = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean matches(SVG.SvgElementBase svgElementBase) {
            switch (this.$r8$classId) {
                case 0:
                    if (svgElementBase.parent != null) {
                        break;
                    }
                    break;
                case 1:
                    if ((svgElementBase instanceof SVG.SvgContainer) && ((SVG.SvgContainer) svgElementBase).getChildren().size() != 0) {
                        break;
                    }
                    break;
            }
            return false;
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "root";
                case 1:
                    return "empty";
                default:
                    return "target";
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Rule {
        public Selector selector;
        public Source source;
        public SVG.Style style;

        public final String toString() {
            return String.valueOf(this.selector) + " {...} (src=" + this.source + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Selector {
        public ArrayList simpleSelectors = null;
        public int specificity = 0;

        public final void addedAttributeOrPseudo() {
            this.specificity += 1000;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator it = this.simpleSelectors.iterator();
            while (it.hasNext()) {
                sb.append((SimpleSelector) it.next());
                sb.append(' ');
            }
            sb.append('[');
            return Animation.CC.m(sb, this.specificity, ']');
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SimpleSelector {
        public final Combinator combinator;
        public final String tag;
        public ArrayList attribs = null;
        public ArrayList pseudos = null;

        public SimpleSelector(Combinator combinator, String str) {
            this.combinator = null;
            this.tag = null;
            this.combinator = combinator == null ? Combinator.DESCENDANT : combinator;
            this.tag = str;
        }

        public final void addAttrib(String str, AttribOp attribOp, String str2) {
            ArrayList arrayList = this.attribs;
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.attribs = arrayList;
            }
            arrayList.add(new Attrib(str, attribOp, str2));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Combinator combinator = Combinator.CHILD;
            Combinator combinator2 = this.combinator;
            if (combinator2 == combinator) {
                sb.append("> ");
            } else if (combinator2 == Combinator.FOLLOWS) {
                sb.append("+ ");
            }
            String str = this.tag;
            if (str == null) {
                str = "*";
            }
            sb.append(str);
            ArrayList arrayList = this.attribs;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Attrib attrib = (Attrib) it.next();
                    sb.append('[');
                    String str2 = attrib.name;
                    String str3 = attrib.value;
                    sb.append(str2);
                    int i = AnonymousClass1.$SwitchMap$com$caverock$androidsvg$CSSParser$AttribOp[attrib.operation.ordinal()];
                    if (i == 1) {
                        sb.append('=');
                        sb.append(str3);
                    } else if (i == 2) {
                        sb.append("~=");
                        sb.append(str3);
                    } else if (i == 3) {
                        sb.append("|=");
                        sb.append(str3);
                    }
                    sb.append(']');
                }
            }
            ArrayList arrayList2 = this.pseudos;
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    PseudoClass pseudoClass = (PseudoClass) it2.next();
                    sb.append(':');
                    sb.append(pseudoClass);
                }
            }
            return sb.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Source {
        private static final /* synthetic */ Source[] $VALUES;
        public static final Source Document;
        public static final Source RenderOptions;

        static {
            Source source = new Source("Document", 0);
            Document = source;
            Source source2 = new Source("RenderOptions", 1);
            RenderOptions = source2;
            $VALUES = new Source[]{source, source2};
        }

        public static Source valueOf(String str) {
            return (Source) Enum.valueOf(Source.class, str);
        }

        public static Source[] values() {
            return (Source[]) $VALUES.clone();
        }
    }

    public CSSParser(Button button, TextInputLayout... textInputLayoutArr) {
        this.deviceMediaType = button;
        this.source = textInputLayoutArr;
        for (TextInputLayout textInputLayout : textInputLayoutArr) {
            EditText editText = textInputLayout.getEditText();
            editText.getClass();
            editText.addTextChangedListener(new SearchView.AnonymousClass10(12, this));
        }
        revalidate(true);
    }

    public static int getChildPosition(ArrayList arrayList, int i, SVG.SvgElementBase svgElementBase) {
        int i2 = 0;
        if (i < 0) {
            return 0;
        }
        Object obj = arrayList.get(i);
        SVG.SvgContainer svgContainer = svgElementBase.parent;
        if (obj != svgContainer) {
            return -1;
        }
        Iterator it = svgContainer.getChildren().iterator();
        while (it.hasNext()) {
            if (((SVG.SvgObject) it.next()) == svgElementBase) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static ArrayList parseMediaList(CSSTextScanner cSSTextScanner) {
        ArrayList arrayList = new ArrayList();
        while (!cSSTextScanner.empty()) {
            String str = (String) cSSTextScanner.commands;
            String str2 = null;
            if (!cSSTextScanner.empty()) {
                int i = cSSTextScanner.commandsLength;
                char charAt = str.charAt(i);
                if ((charAt < 'A' || charAt > 'Z') && (charAt < 'a' || charAt > 'z')) {
                    cSSTextScanner.commandsLength = i;
                } else {
                    int advanceChar = cSSTextScanner.advanceChar();
                    while (true) {
                        if ((advanceChar < 65 || advanceChar > 90) && (advanceChar < 97 || advanceChar > 122)) {
                            break;
                        }
                        advanceChar = cSSTextScanner.advanceChar();
                    }
                    str2 = str.substring(i, cSSTextScanner.commandsLength);
                }
            }
            if (str2 == null) {
                break;
            }
            try {
                arrayList.add(MediaType.valueOf(str2));
            } catch (IllegalArgumentException unused) {
            }
            if (!cSSTextScanner.skipCommaWhitespace()) {
                break;
            }
        }
        return arrayList;
    }

    public static boolean ruleMatch(Selector selector, int i, ArrayList arrayList, int i2, SVG.SvgElementBase svgElementBase) {
        SimpleSelector simpleSelector = (SimpleSelector) selector.simpleSelectors.get(i);
        if (!selectorMatch(simpleSelector, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.combinator;
        if (combinator == Combinator.DESCENDANT) {
            if (i != 0) {
                while (i2 >= 0) {
                    if (!ruleMatchOnAncestors(selector, i - 1, arrayList, i2)) {
                        i2--;
                    }
                }
                return false;
            }
            return true;
        }
        if (combinator == Combinator.CHILD) {
            return ruleMatchOnAncestors(selector, i - 1, arrayList, i2);
        }
        int childPosition = getChildPosition(arrayList, i2, svgElementBase);
        if (childPosition <= 0) {
            return false;
        }
        return ruleMatch(selector, i - 1, arrayList, i2, (SVG.SvgElementBase) svgElementBase.parent.getChildren().get(childPosition - 1));
    }

    public static boolean ruleMatchOnAncestors(Selector selector, int i, ArrayList arrayList, int i2) {
        SimpleSelector simpleSelector = (SimpleSelector) selector.simpleSelectors.get(i);
        SVG.SvgElementBase svgElementBase = (SVG.SvgElementBase) arrayList.get(i2);
        if (!selectorMatch(simpleSelector, svgElementBase)) {
            return false;
        }
        Combinator combinator = simpleSelector.combinator;
        if (combinator == Combinator.DESCENDANT) {
            if (i != 0) {
                while (i2 > 0) {
                    i2--;
                    if (ruleMatchOnAncestors(selector, i - 1, arrayList, i2)) {
                    }
                }
                return false;
            }
            return true;
        }
        if (combinator == Combinator.CHILD) {
            return ruleMatchOnAncestors(selector, i - 1, arrayList, i2 - 1);
        }
        int childPosition = getChildPosition(arrayList, i2, svgElementBase);
        if (childPosition <= 0) {
            return false;
        }
        return ruleMatch(selector, i - 1, arrayList, i2, (SVG.SvgElementBase) svgElementBase.parent.getChildren().get(childPosition - 1));
    }

    public static boolean selectorMatch(SimpleSelector simpleSelector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList;
        String str = simpleSelector.tag;
        if (str != null && !str.equals(svgElementBase.getNodeName().toLowerCase(Locale.US))) {
            return false;
        }
        ArrayList arrayList2 = simpleSelector.attribs;
        if (arrayList2 != null) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Attrib attrib = (Attrib) it.next();
                String str2 = attrib.name;
                String str3 = attrib.value;
                if (str2.equals("id")) {
                    if (!str3.equals(svgElementBase.id)) {
                        return false;
                    }
                } else if (!str2.equals("class") || (arrayList = svgElementBase.classNames) == null || !arrayList.contains(str3)) {
                    return false;
                }
            }
        }
        ArrayList arrayList3 = simpleSelector.pseudos;
        if (arrayList3 == null) {
            return true;
        }
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            if (!((PseudoClass) it2.next()).matches(svgElementBase)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: activeHoverEvent-0FcD4WY, reason: not valid java name */
    public boolean m795activeHoverEvent0FcD4WY(long j) {
        Object obj;
        ArrayList arrayList = (ArrayList) ((CardView.AnonymousClass1) this.source).mCardBackground;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            if (PointerId.m505equalsimpl0(((PointerInputEventData) obj).id, j)) {
                break;
            }
            i++;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData != null) {
            return pointerInputEventData.activeHover;
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
    public boolean equals(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
        boolean z = this.inMediaRule;
        CallableDescriptor callableDescriptor = (CallableDescriptor) this.deviceMediaType;
        CallableDescriptor callableDescriptor2 = (CallableDescriptor) this.source;
        if (typeConstructor.equals(typeConstructor2)) {
            return true;
        }
        ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        ClassifierDescriptor declarationDescriptor2 = typeConstructor2.getDeclarationDescriptor();
        if (!(declarationDescriptor instanceof TypeParameterDescriptor) || !(declarationDescriptor2 instanceof TypeParameterDescriptor)) {
            return false;
        }
        GlanceThemeKt$GlanceTheme$1 glanceThemeKt$GlanceTheme$1 = new GlanceThemeKt$GlanceTheme$1(8, callableDescriptor, callableDescriptor2);
        return OverridingUtil.AnonymousClass1.INSTANCE.areTypeParametersEquivalent((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, z, glanceThemeKt$GlanceTheme$1);
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onDrag-3MmeM6k */
    public boolean mo221onDrag3MmeM6k(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
        LegacyTextFieldState legacyTextFieldState;
        TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.source;
        if (!textFieldSelectionManager.getEnabled() || textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.state) == null || legacyTextFieldState.getLayoutResult() == null) {
            return false;
        }
        updateMouseSelection(textFieldSelectionManager.getValue$foundation(), j, false, selectionAdjustment$Companion$$ExternalSyntheticLambda0);
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    public void onDragDone() {
        if (this.inMediaRule) {
            ((TextFieldSelectionManager) this.source).m243maybeSuggestSelectionOEnZFl4((TextRange) this.deviceMediaType);
        }
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onExtend-k-4lQ0M */
    public boolean mo222onExtendk4lQ0M(long j) {
        TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.source;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
        if (legacyTextFieldState == null || legacyTextFieldState.getLayoutResult() == null || !textFieldSelectionManager.getEnabled()) {
            return false;
        }
        textFieldSelectionManager.previousRawDragOffset = -1;
        FocusRequester focusRequester = textFieldSelectionManager.focusRequester;
        if (focusRequester != null) {
            FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
        }
        updateMouseSelection(textFieldSelectionManager.getValue$foundation(), j, false, SelectionAdjustment$Companion.None);
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onExtendDrag-k-4lQ0M */
    public boolean mo223onExtendDragk4lQ0M(long j) {
        LegacyTextFieldState legacyTextFieldState;
        TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.source;
        if (!textFieldSelectionManager.getEnabled() || textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.state) == null || legacyTextFieldState.getLayoutResult() == null) {
            return false;
        }
        updateMouseSelection(textFieldSelectionManager.getValue$foundation(), j, false, SelectionAdjustment$Companion.None);
        return true;
    }

    @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
    /* renamed from: onStart-9KIMszo */
    public boolean mo224onStart9KIMszo(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0, int i) {
        LegacyTextFieldState legacyTextFieldState;
        TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.source;
        if (!textFieldSelectionManager.getEnabled() || textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.state) == null || legacyTextFieldState.getLayoutResult() == null) {
            return false;
        }
        FocusRequester focusRequester = textFieldSelectionManager.focusRequester;
        if (focusRequester != null) {
            FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
        }
        textFieldSelectionManager.dragBeginPosition = j;
        textFieldSelectionManager.previousRawDragOffset = -1;
        textFieldSelectionManager.enterSelectionMode$foundation(true);
        long updateMouseSelection = updateMouseSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.dragBeginPosition, true, selectionAdjustment$Companion$$ExternalSyntheticLambda0);
        if (i >= 2) {
            this.inMediaRule = true;
            this.deviceMediaType = new TextRange(updateMouseSelection);
        }
        return true;
    }

    public void parseAtRule(Headers.Builder builder, CSSTextScanner cSSTextScanner) {
        int intValue;
        char charAt;
        int hexChar;
        String nextIdentifier = cSSTextScanner.nextIdentifier();
        cSSTextScanner.skipWhitespace();
        if (nextIdentifier == null) {
            throw new CSSParseException("Invalid '@' rule");
        }
        int i = 0;
        if (!this.inMediaRule && nextIdentifier.equals("media")) {
            ArrayList parseMediaList = parseMediaList(cSSTextScanner);
            if (!cSSTextScanner.consume('{')) {
                throw new CSSParseException("Invalid @media rule: missing rule set");
            }
            cSSTextScanner.skipWhitespace();
            MediaType mediaType = (MediaType) this.deviceMediaType;
            Iterator it = parseMediaList.iterator();
            while (it.hasNext()) {
                MediaType mediaType2 = (MediaType) it.next();
                if (mediaType2 == MediaType.all || mediaType2 == mediaType) {
                    this.inMediaRule = true;
                    builder.addAll(parseRuleset(cSSTextScanner));
                    this.inMediaRule = false;
                    break;
                }
            }
            parseRuleset(cSSTextScanner);
            if (!cSSTextScanner.empty() && !cSSTextScanner.consume('}')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        } else if (this.inMediaRule || !nextIdentifier.equals("import")) {
            Log.w("CSSParser", "Ignoring @" + nextIdentifier + " rule");
            while (!cSSTextScanner.empty() && ((intValue = cSSTextScanner.nextChar().intValue()) != 59 || i != 0)) {
                if (intValue == 123) {
                    i++;
                } else if (intValue == 125 && i > 0 && i - 1 == 0) {
                    break;
                }
            }
        } else {
            String str = null;
            if (!cSSTextScanner.empty()) {
                int i2 = cSSTextScanner.commandsLength;
                if (cSSTextScanner.consume("url(")) {
                    cSSTextScanner.skipWhitespace();
                    String nextCSSString = cSSTextScanner.nextCSSString();
                    if (nextCSSString == null) {
                        String str2 = (String) cSSTextScanner.commands;
                        StringBuilder sb = new StringBuilder();
                        while (!cSSTextScanner.empty() && (charAt = str2.charAt(cSSTextScanner.commandsLength)) != '\'' && charAt != '\"' && charAt != '(' && charAt != ')' && !SVG.PathDefinition.isWhitespace(charAt) && !Character.isISOControl((int) charAt)) {
                            cSSTextScanner.commandsLength++;
                            if (charAt == '\\') {
                                if (!cSSTextScanner.empty()) {
                                    int i3 = cSSTextScanner.commandsLength;
                                    cSSTextScanner.commandsLength = i3 + 1;
                                    charAt = str2.charAt(i3);
                                    if (charAt != '\n' && charAt != '\r' && charAt != '\f') {
                                        int hexChar2 = CSSTextScanner.hexChar(charAt);
                                        if (hexChar2 != -1) {
                                            for (int i4 = 1; i4 <= 5 && !cSSTextScanner.empty() && (hexChar = CSSTextScanner.hexChar(str2.charAt(cSSTextScanner.commandsLength))) != -1; i4++) {
                                                cSSTextScanner.commandsLength++;
                                                hexChar2 = (hexChar2 * 16) + hexChar;
                                            }
                                            sb.append((char) hexChar2);
                                        }
                                    }
                                }
                            }
                            sb.append(charAt);
                        }
                        nextCSSString = sb.length() == 0 ? null : sb.toString();
                    }
                    if (nextCSSString == null) {
                        cSSTextScanner.commandsLength = i2;
                    } else {
                        cSSTextScanner.skipWhitespace();
                        if (cSSTextScanner.empty() || cSSTextScanner.consume(")")) {
                            str = nextCSSString;
                        } else {
                            cSSTextScanner.commandsLength = i2;
                        }
                    }
                }
            }
            if (str == null) {
                str = cSSTextScanner.nextCSSString();
            }
            if (str == null) {
                throw new CSSParseException("Invalid @import rule: expected string or url()");
            }
            cSSTextScanner.skipWhitespace();
            parseMediaList(cSSTextScanner);
            if (!cSSTextScanner.empty() && !cSSTextScanner.consume(';')) {
                throw new CSSParseException("Invalid @media rule: expected '}' at end of rule set");
            }
        }
        cSSTextScanner.skipWhitespace();
    }

    public boolean parseRule(Headers.Builder builder, CSSTextScanner cSSTextScanner) {
        ArrayList nextSelectorGroup = cSSTextScanner.nextSelectorGroup();
        if (nextSelectorGroup == null || nextSelectorGroup.isEmpty()) {
            return false;
        }
        if (!cSSTextScanner.consume('{')) {
            throw new CSSParseException("Malformed rule block: expected '{'");
        }
        cSSTextScanner.skipWhitespace();
        SVG.Style style = new SVG.Style();
        do {
            String nextIdentifier = cSSTextScanner.nextIdentifier();
            cSSTextScanner.skipWhitespace();
            if (!cSSTextScanner.consume(':')) {
                throw new CSSParseException("Expected ':'");
            }
            cSSTextScanner.skipWhitespace();
            String str = (String) cSSTextScanner.commands;
            String str2 = null;
            if (!cSSTextScanner.empty()) {
                int i = cSSTextScanner.commandsLength;
                int charAt = str.charAt(i);
                int i2 = i;
                while (charAt != -1 && charAt != 59 && charAt != 125 && charAt != 33 && charAt != 10 && charAt != 13) {
                    if (!SVG.PathDefinition.isWhitespace(charAt)) {
                        i2 = cSSTextScanner.commandsLength + 1;
                    }
                    charAt = cSSTextScanner.advanceChar();
                }
                if (cSSTextScanner.commandsLength > i) {
                    str2 = str.substring(i, i2);
                } else {
                    cSSTextScanner.commandsLength = i;
                }
            }
            if (str2 == null) {
                throw new CSSParseException("Expected property value");
            }
            cSSTextScanner.skipWhitespace();
            if (cSSTextScanner.consume('!')) {
                cSSTextScanner.skipWhitespace();
                if (!cSSTextScanner.consume("important")) {
                    throw new CSSParseException("Malformed rule set: found unexpected '!'");
                }
                cSSTextScanner.skipWhitespace();
            }
            cSSTextScanner.consume(';');
            SVGParser.processStyleProperty(style, nextIdentifier, str2);
            cSSTextScanner.skipWhitespace();
            if (cSSTextScanner.empty()) {
                break;
            }
        } while (!cSSTextScanner.consume('}'));
        cSSTextScanner.skipWhitespace();
        Iterator it = nextSelectorGroup.iterator();
        while (it.hasNext()) {
            Selector selector = (Selector) it.next();
            Source source = (Source) this.source;
            Rule rule = new Rule();
            rule.selector = selector;
            rule.style = style;
            rule.source = source;
            builder.add(rule);
        }
        return true;
    }

    public Headers.Builder parseRuleset(CSSTextScanner cSSTextScanner) {
        Headers.Builder builder = new Headers.Builder(4, (byte) 0);
        while (!cSSTextScanner.empty()) {
            try {
                if (!cSSTextScanner.consume("<!--") && !cSSTextScanner.consume("-->")) {
                    if (!cSSTextScanner.consume('@')) {
                        if (!parseRule(builder, cSSTextScanner)) {
                            break;
                        }
                    } else {
                        parseAtRule(builder, cSSTextScanner);
                    }
                }
            } catch (CSSParseException e) {
                Log.e("CSSParser", "CSS parser terminated early due to error: " + e.getMessage());
                return builder;
            }
        }
        return builder;
    }

    public void revalidate(boolean z) {
        Button button = (Button) this.deviceMediaType;
        TextInputLayout[] textInputLayoutArr = (TextInputLayout[]) this.source;
        int length = textInputLayoutArr.length;
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z2 = true;
                break;
            }
            TextInputLayout textInputLayout = textInputLayoutArr[i];
            if (textInputLayout.getVisibility() != 8) {
                EditText editText = textInputLayout.getEditText();
                editText.getClass();
                Editable text = editText.getText();
                text.getClass();
                if (text.length() <= 0) {
                    break;
                }
            }
            i++;
        }
        if (z2 != this.inMediaRule || z) {
            this.inMediaRule = z2;
            button.setEnabled(z2);
            button.setAlpha(this.inMediaRule ? 1.0f : 0.5f);
        }
    }

    public long updateMouseSelection(TextFieldValue textFieldValue, long j, boolean z, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
        TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.source;
        long m245updateSelectionjSglsI8 = textFieldSelectionManager.m245updateSelectionjSglsI8(textFieldValue, j, z, false, selectionAdjustment$Companion$$ExternalSyntheticLambda0, false, null);
        if (!TextRange.m639equalsimpl(m245updateSelectionjSglsI8, (TextRange) this.deviceMediaType)) {
            this.inMediaRule = false;
        }
        textFieldSelectionManager.setHandleState(TextRange.m641getCollapsedimpl(m245updateSelectionjSglsI8) ? HandleState.Cursor : HandleState.Selection);
        return m245updateSelectionjSglsI8;
    }

    public CSSParser(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, boolean z) {
        this.inMediaRule = z;
        this.deviceMediaType = callableDescriptor;
        this.source = callableDescriptor2;
    }

    public CSSParser(LongSparseArray longSparseArray, CardView.AnonymousClass1 anonymousClass1) {
        this.deviceMediaType = longSparseArray;
        this.source = anonymousClass1;
    }

    public CSSParser(MediaType mediaType, Source source) {
        this.inMediaRule = false;
        this.deviceMediaType = mediaType;
        this.source = source;
    }

    public CSSParser(TextFieldSelectionManager textFieldSelectionManager) {
        this.source = textFieldSelectionManager;
        this.inMediaRule = true;
    }

    public static boolean ruleMatch(Selector selector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList = new ArrayList();
        Object obj = svgElementBase.parent;
        while (true) {
            if (obj == null) {
                break;
            }
            arrayList.add(0, obj);
            obj = ((SVG.SvgObject) obj).parent;
        }
        int size = arrayList.size() - 1;
        ArrayList arrayList2 = selector.simpleSelectors;
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        ArrayList arrayList3 = selector.simpleSelectors;
        if (size2 == 1) {
            return selectorMatch((SimpleSelector) arrayList3.get(0), svgElementBase);
        }
        return ruleMatch(selector, (arrayList3 != null ? arrayList3.size() : 0) - 1, arrayList, size, svgElementBase);
    }
}
