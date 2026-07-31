package org.schabi.newpipe.extractor.utils.jsextractor;

import org.mozilla.javascript.Kit;
import org.mozilla.javascript.ScriptRuntime;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EcmaScriptTokenStream {
    public boolean dirtyLine;
    public final String sourceString;
    public int stringBufferTop;
    public int tokenBeg;
    public int tokenEnd;
    public int ungetCursor;
    public char[] stringBuffer = new char[128];
    public final int[] ungetBuffer = new int[3];
    public int lineEndChar = -1;
    public int sourceCursor = 0;
    public int cursor = 0;
    public int lineno = 0;

    public EcmaScriptTokenStream(String str) {
        this.sourceString = str;
    }

    public static boolean isDigit(int i, int i2) {
        if (i == 10 && isDigit(i2)) {
            return true;
        }
        if (i == 16) {
            if (48 <= i2 && i2 <= 57) {
                return true;
            }
            if (97 <= i2 && i2 <= 102) {
                return true;
            }
            if (65 <= i2 && i2 <= 70) {
                return true;
            }
        }
        if (i == 8 && 48 <= i2 && i2 <= 55) {
            return true;
        }
        if (i == 2) {
            return 48 == i2 || i2 == 49;
        }
        return false;
    }

    public final void addToString(int i) {
        int i2 = this.stringBufferTop;
        char[] cArr = this.stringBuffer;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, i2);
            this.stringBuffer = cArr2;
        }
        this.stringBuffer[i2] = (char) i;
        this.stringBufferTop = i2 + 1;
    }

    public final int getChar(boolean z, boolean z2) {
        char charAt;
        int i;
        int i2 = this.ungetCursor;
        if (i2 != 0) {
            this.cursor++;
            int i3 = i2 - 1;
            this.ungetCursor = i3;
            return this.ungetBuffer[i3];
        }
        while (true) {
            int i4 = this.sourceCursor;
            String str = this.sourceString;
            if (i4 != str.length()) {
                this.cursor++;
                int i5 = this.sourceCursor;
                this.sourceCursor = i5 + 1;
                charAt = str.charAt(i5);
                if (!z2 && (i = this.lineEndChar) >= 0) {
                    if (i == 13 && charAt == '\n') {
                        this.lineEndChar = 10;
                    } else {
                        this.lineEndChar = -1;
                        this.lineno++;
                    }
                }
                if (charAt > 127) {
                    if (charAt == 65279) {
                        break;
                    }
                    if (!z || charAt <= 127 || Character.getType(charAt) != 16) {
                        break;
                    }
                } else if (charAt == '\n' || charAt == '\r') {
                    this.lineEndChar = charAt;
                    return 10;
                }
            } else {
                return -1;
            }
        }
        if (ScriptRuntime.isJSLineTerminator(charAt)) {
            this.lineEndChar = charAt;
            return 10;
        }
        return charAt;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0386, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.RETURN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0389, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.IMPORT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x038c, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.EXPORT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x038f, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.RESERVED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0392, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.DELPROP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0112, code lost:
    
        if (r7.equals("default") != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0115, code lost:
    
        r1 = 38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x011f, code lost:
    
        if (r7.equals("function") != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0122, code lost:
    
        r1 = 37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x012b, code lost:
    
        if (r7.equals("instanceof") != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x012e, code lost:
    
        r1 = 36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0138, code lost:
    
        if (r7.equals("debugger") != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x013b, code lost:
    
        r1 = 35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0146, code lost:
    
        if (r7.equals("yield") != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0149, code lost:
    
        r1 = 34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0153, code lost:
    
        if (r7.equals("while") != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0156, code lost:
    
        r1 = 33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0160, code lost:
    
        if (r7.equals("throw") != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0163, code lost:
    
        r1 = 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x016e, code lost:
    
        if (r7.equals("super") != false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0171, code lost:
    
        r1 = 31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x017b, code lost:
    
        if (r7.equals("false") != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x017e, code lost:
    
        r1 = 30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0188, code lost:
    
        if (r7.equals("const") != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x018c, code lost:
    
        r1 = 29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0196, code lost:
    
        if (r7.equals("class") != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x019a, code lost:
    
        r1 = 28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01a4, code lost:
    
        if (r7.equals("catch") != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01a8, code lost:
    
        r1 = 27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01b2, code lost:
    
        if (r7.equals("break") != false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01b6, code lost:
    
        r1 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01c0, code lost:
    
        if (r7.equals("await") != false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01c4, code lost:
    
        r1 = 25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x01cf, code lost:
    
        if (r7.equals("with") != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x01d3, code lost:
    
        r1 = 24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x01de, code lost:
    
        if (r7.equals("void") != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x01e2, code lost:
    
        r1 = 23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01ed, code lost:
    
        if (r7.equals("true") != false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x01f1, code lost:
    
        r1 = 22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01fc, code lost:
    
        if (r7.equals("this") != false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0200, code lost:
    
        r1 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x020a, code lost:
    
        if (r7.equals("null") != false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x020e, code lost:
    
        r1 = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0218, code lost:
    
        if (r7.equals("enum") != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x021c, code lost:
    
        r1 = 19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0226, code lost:
    
        if (r7.equals("else") != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x022a, code lost:
    
        r1 = 18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0234, code lost:
    
        if (r7.equals("case") != false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0238, code lost:
    
        r1 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0243, code lost:
    
        if (r7.equals("var") != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0247, code lost:
    
        r1 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0252, code lost:
    
        if (r7.equals("try") != false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0256, code lost:
    
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0260, code lost:
    
        if (r7.equals("new") != false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0264, code lost:
    
        r1 = 14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x026e, code lost:
    
        if (r7.equals("let") != false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0272, code lost:
    
        r1 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x027c, code lost:
    
        if (r7.equals("for") != false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0280, code lost:
    
        r1 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x028a, code lost:
    
        if (r7.equals("in") != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x028e, code lost:
    
        r1 = 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0298, code lost:
    
        if (r7.equals("if") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x029c, code lost:
    
        r1 = 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x02a6, code lost:
    
        if (r7.equals("do") != false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x02aa, code lost:
    
        r1 = 9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x02b4, code lost:
    
        if (r7.equals("continue") != false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x02b8, code lost:
    
        r1 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x02c2, code lost:
    
        if (r7.equals("finally") != false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x02c6, code lost:
    
        r1 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x02cf, code lost:
    
        if (r7.equals("typeof") != false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x02d3, code lost:
    
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x02dc, code lost:
    
        if (r7.equals("switch") != false) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x02e0, code lost:
    
        r1 = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x02e8, code lost:
    
        if (r7.equals("return") != false) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x02ec, code lost:
    
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x02f5, code lost:
    
        if (r7.equals("import") != false) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x02f9, code lost:
    
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0301, code lost:
    
        if (r7.equals("export") != false) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0305, code lost:
    
        r1 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x030e, code lost:
    
        if (r7.equals("extends") != false) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0318, code lost:
    
        if (r7.equals("delete") != false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x031c, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0399, code lost:
    
        return org.schabi.newpipe.extractor.utils.jsextractor.Token.NAME;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x03b9, code lost:
    
        if (isDigit(r4) != false) goto L568;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x04dd, code lost:
    
        if (matchChar(42) != false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x04df, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x04e2, code lost:
    
        r6 = getChar(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x04e6, code lost:
    
        if (r6 == (-1)) goto L684;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x04e8, code lost:
    
        if (r6 != 42) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x04eb, code lost:
    
        if (r6 != 47) goto L686;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x04f4, code lost:
    
        r20.tokenEnd = r20.cursor;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x04e1, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x04ed, code lost:
    
        if (r4 == false) goto L691;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x04ef, code lost:
    
        r20.tokenEnd = r20.cursor;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x04f3, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x04f9, code lost:
    
        r20.tokenEnd = r20.cursor - 1;
        org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0.m("unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0504, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x04e2, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0100, code lost:
    
        if (r3 != false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0106, code lost:
    
        switch(r7.hashCode()) {
            case -1335458389: goto L222;
            case -1305664359: goto L219;
            case -1289153612: goto L215;
            case -1184795739: goto L211;
            case -934396624: goto L207;
            case -889473228: goto L203;
            case -858802543: goto L199;
            case -853259901: goto L195;
            case -567202649: goto L191;
            case 3211: goto L187;
            case 3357: goto L183;
            case 3365: goto L179;
            case 101577: goto L175;
            case 107035: goto L171;
            case 108960: goto L167;
            case 115131: goto L163;
            case 116519: goto L159;
            case 3046192: goto L155;
            case 3116345: goto L151;
            case 3118337: goto L147;
            case 3392903: goto L143;
            case 3559070: goto L139;
            case 3569038: goto L135;
            case 3625364: goto L131;
            case 3649734: goto L127;
            case 93223254: goto L123;
            case 94001407: goto L119;
            case 94432955: goto L115;
            case 94742904: goto L111;
            case 94844771: goto L107;
            case 97196323: goto L103;
            case 109801339: goto L99;
            case 110339814: goto L95;
            case 113101617: goto L91;
            case 114974605: goto L87;
            case 547812385: goto L83;
            case 902025516: goto L79;
            case 1380938712: goto L75;
            case 1544803905: goto L71;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0109, code lost:
    
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x031d, code lost:
    
        switch(r1) {
            case 0: goto L262;
            case 1: goto L261;
            case 2: goto L260;
            case 3: goto L259;
            case 4: goto L258;
            case 5: goto L257;
            case 6: goto L256;
            case 7: goto L255;
            case 8: goto L254;
            case 9: goto L253;
            case 10: goto L252;
            case 11: goto L251;
            case 12: goto L250;
            case 13: goto L249;
            case 14: goto L248;
            case 15: goto L247;
            case 16: goto L246;
            case 17: goto L245;
            case 18: goto L244;
            case 19: goto L261;
            case 20: goto L243;
            case 21: goto L242;
            case 22: goto L241;
            case 23: goto L240;
            case 24: goto L239;
            case 25: goto L261;
            case 26: goto L238;
            case 27: goto L237;
            case 28: goto L261;
            case 29: goto L236;
            case 30: goto L235;
            case 31: goto L261;
            case 32: goto L234;
            case 33: goto L233;
            case 34: goto L232;
            case 35: goto L231;
            case 36: goto L230;
            case 37: goto L229;
            case 38: goto L228;
            default: goto L227;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0320, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0394, code lost:
    
        if (r0 == r4) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0396, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0323, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.DEFAULT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0327, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.FUNCTION;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x032b, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.INSTANCEOF;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x032f, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.DEBUGGER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0333, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.YIELD;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0337, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.WHILE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x033b, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.THROW;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x033f, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0343, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.CONST;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0347, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.CATCH;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x034a, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.BREAK;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x034d, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.WITH;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0350, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.VOID;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0353, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.TRUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0356, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.THIS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0359, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.NULL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x035c, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.ELSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x035f, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.CASE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0362, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.VAR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0365, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.TRY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0368, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.NEW;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x036b, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.LET;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x036e, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.FOR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0371, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.IN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0374, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.IF;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0377, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.DO;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x037a, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.CONTINUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x037d, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.FINALLY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0380, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.TYPEOF;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0383, code lost:
    
        r0 = org.schabi.newpipe.extractor.utils.jsextractor.Token.SWITCH;
     */
    /* JADX WARN: Removed duplicated region for block: B:582:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:585:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x07d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:334:0x04e8 -> B:331:0x04df). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.schabi.newpipe.extractor.utils.jsextractor.Token getToken() {
        /*
            Method dump skipped, instructions count: 2306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.utils.jsextractor.EcmaScriptTokenStream.getToken():org.schabi.newpipe.extractor.utils.jsextractor.Token");
    }

    public final boolean matchChar(int i) {
        int i2 = getChar(true, true);
        if (i2 == i) {
            this.tokenEnd = this.cursor;
            return true;
        }
        ungetCharIgnoreLineEnd(i2);
        return false;
    }

    public final int readDigits(int i, int i2) {
        if (!isDigit(i, i2)) {
            return i2;
        }
        addToString(i2);
        int i3 = getChar(true, false);
        if (i3 == -1) {
            return -1;
        }
        while (true) {
            if (i3 == 95) {
                i3 = getChar(true, false);
                if (i3 == 10 || i3 == -1) {
                    return -2;
                }
                if (!isDigit(i, i3)) {
                    ungetChar(i3);
                    return 95;
                }
                addToString(95);
            } else {
                if (!isDigit(i, i3)) {
                    return i3;
                }
                addToString(i3);
                i3 = getChar(true, false);
                if (i3 == -1) {
                    return -1;
                }
            }
        }
    }

    public final void skipLine() {
        int i;
        do {
            i = getChar(true, false);
            if (i == -1) {
                break;
            }
        } while (i != 10);
        ungetChar(i);
        this.tokenEnd = this.cursor;
    }

    public final void ungetChar(int i) {
        int i2 = this.ungetCursor;
        int[] iArr = this.ungetBuffer;
        if (i2 != 0 && iArr[i2 - 1] == 10) {
            Kit.codeBug();
        }
        int i3 = this.ungetCursor;
        this.ungetCursor = i3 + 1;
        iArr[i3] = i;
        this.cursor--;
    }

    public final void ungetCharIgnoreLineEnd(int i) {
        int i2 = this.ungetCursor;
        this.ungetCursor = i2 + 1;
        this.ungetBuffer[i2] = i;
        this.cursor--;
    }

    public static boolean isDigit(int i) {
        return 48 <= i && i <= 57;
    }
}
