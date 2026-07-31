package org.mozilla.javascript.regexp;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.LazilyLoadedCtor;
import org.mozilla.javascript.RegExpProxy;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RegExpImpl implements RegExpProxy {
    protected String input;
    protected SubString lastMatch;
    protected SubString lastParen;
    protected SubString leftContext;
    protected boolean multiline;
    protected SubString[] parens;
    protected SubString rightContext;

    private static NativeRegExp createRegExp(Context context, Scriptable scriptable, Object[] objArr, int i, boolean z) {
        Object obj;
        String str;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        if (objArr.length == 0 || (obj = objArr[0]) == Undefined.instance) {
            return NativeRegExpInstantiator.withLanguageVersionScopeCompiled(context.getLanguageVersion(), topLevelScope, NativeRegExp.compileRE(context, "", "", false));
        }
        if (obj instanceof NativeRegExp) {
            return (NativeRegExp) obj;
        }
        String scriptRuntime = ScriptRuntime.toString(obj);
        if (i < objArr.length) {
            objArr[0] = scriptRuntime;
            str = ScriptRuntime.toString(objArr[i]);
        } else {
            str = null;
        }
        return NativeRegExpInstantiator.withLanguageVersionScopeCompiled(context.getLanguageVersion(), topLevelScope, NativeRegExp.compileRE(context, scriptRuntime, str, z));
    }

    private static void do_replace(GlobData globData, Context context, RegExpImpl regExpImpl) {
        int i;
        StringBuilder sb = globData.charBuf;
        String str = globData.repstr;
        int i2 = globData.dollar;
        int i3 = 0;
        if (i2 != -1) {
            int[] iArr = new int[1];
            int i4 = 0;
            do {
                sb.append((CharSequence) str, i4, i2);
                SubString interpretDollar = interpretDollar(context, regExpImpl, str, i2, iArr);
                if (interpretDollar != null) {
                    int i5 = interpretDollar.length;
                    if (i5 > 0) {
                        String str2 = interpretDollar.str;
                        int i6 = interpretDollar.index;
                        sb.append((CharSequence) str2, i6, i5 + i6);
                    }
                    int i7 = iArr[0];
                    int i8 = i2 + i7;
                    i = i2 + i7;
                    i4 = i8;
                } else {
                    i4 = i2;
                    i = i2 + 1;
                }
                i2 = str.indexOf(36, i);
            } while (i2 >= 0);
            i3 = i4;
        }
        int length = str.length();
        if (length > i3) {
            sb.append((CharSequence) str, i3, length);
        }
    }

    private static int find_split(Context context, Scriptable scriptable, String str, String str2, int i, RegExpProxy regExpProxy, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int indexOf;
        int i2 = iArr[0];
        int length = str.length();
        if (i == 120 && scriptable2 == null && str2.length() == 1 && str2.charAt(0) == ' ') {
            if (i2 == 0) {
                while (i2 < length && Character.isWhitespace(str.charAt(i2))) {
                    i2++;
                }
                iArr[0] = i2;
            }
            if (i2 == length) {
                return -1;
            }
            while (i2 < length && !Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
            int i3 = i2;
            while (i3 < length && Character.isWhitespace(str.charAt(i3))) {
                i3++;
            }
            iArr2[0] = i3 - i2;
            return i2;
        }
        if (i2 > length) {
            return -1;
        }
        if (scriptable2 != null) {
            return regExpProxy.find_split(context, scriptable, str, str2, scriptable2, iArr, iArr2, zArr, strArr);
        }
        if (i != 0 && i < 130 && length == 0) {
            return -1;
        }
        if (str2.length() != 0) {
            int i4 = iArr[0];
            return (i4 < length && (indexOf = str.indexOf(str2, i4)) != -1) ? indexOf : length;
        }
        if (i != 120) {
            if (i2 == length) {
                return -1;
            }
            return i2 + 1;
        }
        if (i2 != length) {
            return i2 + 1;
        }
        iArr2[0] = 1;
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0081 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.mozilla.javascript.regexp.SubString interpretDollar(org.mozilla.javascript.Context r7, org.mozilla.javascript.regexp.RegExpImpl r8, java.lang.String r9, int r10, int[] r11) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.interpretDollar(org.mozilla.javascript.Context, org.mozilla.javascript.regexp.RegExpImpl, java.lang.String, int, int[]):org.mozilla.javascript.regexp.SubString");
    }

    private static Object matchOrReplace(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr, RegExpImpl regExpImpl, GlobData globData, NativeRegExp nativeRegExp) {
        GlobData globData2 = globData;
        String str = globData2.str;
        boolean z = (nativeRegExp.getFlags() & 1) != 0;
        globData2.global = z;
        int[] iArr = {0};
        int i = globData2.mode;
        if (i == 4) {
            Object executeRegExp = nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            if (executeRegExp == null || !executeRegExp.equals(Boolean.TRUE)) {
                return -1;
            }
            return Integer.valueOf(regExpImpl.leftContext.length);
        }
        if (!z) {
            return nativeRegExp.executeRegExp(context, scriptable, regExpImpl, str, iArr, i == 2 ? 0 : 1);
        }
        NativeRegExp nativeRegExp2 = nativeRegExp;
        nativeRegExp2.lastIndex = ScriptRuntime.zeroObj;
        Object obj = null;
        int i2 = 0;
        while (iArr[0] <= str.length()) {
            Object executeRegExp2 = nativeRegExp2.executeRegExp(context, scriptable, regExpImpl, str, iArr, 0);
            String str2 = str;
            int[] iArr2 = iArr;
            if (executeRegExp2 != null && executeRegExp2.equals(Boolean.TRUE)) {
                int i3 = globData2.mode;
                if (i3 == 1) {
                    match_glob(globData2, context, scriptable, i2, regExpImpl);
                } else {
                    if (i3 != 2 && i3 != 3) {
                        Kit.codeBug();
                    }
                    SubString subString = regExpImpl.lastMatch;
                    int i4 = globData2.leftIndex;
                    int i5 = subString.index;
                    globData2.leftIndex = subString.length + i5;
                    replace_glob(globData2, context, scriptable, regExpImpl, i4, i5 - i4);
                }
                if (regExpImpl.lastMatch.length == 0) {
                    if (iArr2[0] != str2.length()) {
                        iArr2[0] = iArr2[0] + 1;
                    }
                }
                i2++;
                globData2 = globData;
                nativeRegExp2 = nativeRegExp;
                obj = executeRegExp2;
                str = str2;
                iArr = iArr2;
            }
            return executeRegExp2;
        }
        return obj;
    }

    private static void match_glob(GlobData globData, Context context, Scriptable scriptable, int i, RegExpImpl regExpImpl) {
        if (globData.arrayobj == null) {
            globData.arrayobj = context.newArray(scriptable, 0);
        }
        String subString = regExpImpl.lastMatch.toString();
        Scriptable scriptable2 = globData.arrayobj;
        scriptable2.put(i, scriptable2, subString);
    }

    private static void replace_glob(GlobData globData, Context context, Scriptable scriptable, RegExpImpl regExpImpl, int i, int i2) {
        int length;
        String str;
        int i3;
        if (globData.lambda != null) {
            SubString[] subStringArr = regExpImpl.parens;
            int length2 = subStringArr == null ? 0 : subStringArr.length;
            Object[] objArr = new Object[length2 + 3];
            objArr[0] = regExpImpl.lastMatch.toString();
            for (int i4 = 0; i4 < length2; i4++) {
                SubString subString = subStringArr[i4];
                if (subString != null) {
                    objArr[i4 + 1] = subString.toString();
                } else {
                    objArr[i4 + 1] = Undefined.instance;
                }
            }
            objArr[length2 + 1] = Integer.valueOf(regExpImpl.leftContext.length);
            objArr[length2 + 2] = globData.str;
            if (regExpImpl != ScriptRuntime.getRegExpProxy(context)) {
                Kit.codeBug();
            }
            RegExpImpl regExpImpl2 = new RegExpImpl();
            regExpImpl2.multiline = regExpImpl.multiline;
            regExpImpl2.input = regExpImpl.input;
            ScriptRuntime.setRegExpProxy(context, regExpImpl2);
            try {
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
                str = ScriptRuntime.toString(globData.lambda.call(context, topLevelScope, topLevelScope, objArr));
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                length = str.length();
            } catch (Throwable th) {
                ScriptRuntime.setRegExpProxy(context, regExpImpl);
                throw th;
            }
        } else {
            length = globData.repstr.length();
            int i5 = globData.dollar;
            if (i5 >= 0) {
                int[] iArr = new int[1];
                do {
                    SubString interpretDollar = interpretDollar(context, regExpImpl, globData.repstr, i5, iArr);
                    if (interpretDollar != null) {
                        int i6 = interpretDollar.length;
                        int i7 = iArr[0];
                        i3 = i5 + i7;
                        length = (i6 - i7) + length;
                    } else {
                        i3 = i5 + 1;
                    }
                    i5 = globData.repstr.indexOf(36, i3);
                } while (i5 >= 0);
            }
            str = null;
        }
        int i8 = length + i2 + regExpImpl.rightContext.length;
        StringBuilder sb = globData.charBuf;
        if (sb == null) {
            sb = new StringBuilder(i8);
            globData.charBuf = sb;
        } else {
            sb.ensureCapacity(sb.length() + i8);
        }
        sb.append((CharSequence) regExpImpl.leftContext.str, i, i2 + i);
        if (globData.lambda != null) {
            sb.append(str);
        } else {
            do_replace(globData, context, regExpImpl);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0118 A[SYNTHETIC] */
    @Override // org.mozilla.javascript.RegExpProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object action(org.mozilla.javascript.Context r18, org.mozilla.javascript.Scriptable r19, org.mozilla.javascript.Scriptable r20, java.lang.Object[] r21, int r22) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.action(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[], int):java.lang.Object");
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Object compileRegExp(Context context, String str, String str2) {
        return NativeRegExp.compileRE(context, str, str2, false);
    }

    public SubString getParenSubString(int i) {
        SubString subString;
        SubString[] subStringArr = this.parens;
        return (subStringArr == null || i >= subStringArr.length || (subString = subStringArr[i]) == null) ? new SubString() : subString;
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public boolean isRegExp(Scriptable scriptable) {
        return scriptable instanceof NativeRegExp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
    
        if (r3.isRegExp(r6) != false) goto L32;
     */
    @Override // org.mozilla.javascript.RegExpProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object js_split(org.mozilla.javascript.Context r19, org.mozilla.javascript.Scriptable r20, java.lang.String r21, java.lang.Object[] r22) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.RegExpImpl.js_split(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.String, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public void register(ScriptableObject scriptableObject, boolean z) {
        NativeRegExpStringIterator.init(scriptableObject, z);
        new LazilyLoadedCtor(scriptableObject, "RegExp", "org.mozilla.javascript.regexp.NativeRegExp", z, true);
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public Scriptable wrapRegExp(Context context, Scriptable scriptable, Object obj) {
        return NativeRegExpInstantiator.withLanguageVersionScopeCompiled(context.getLanguageVersion(), scriptable, (RECompiled) obj);
    }

    @Override // org.mozilla.javascript.RegExpProxy
    public int find_split(Context context, Scriptable scriptable, String str, String str2, Scriptable scriptable2, int[] iArr, int[] iArr2, boolean[] zArr, String[][] strArr) {
        int i;
        int i2;
        int i3 = iArr[0];
        int length = str.length();
        int languageVersion = context.getLanguageVersion();
        NativeRegExp nativeRegExp = (NativeRegExp) scriptable2;
        while (true) {
            int i4 = iArr[0];
            iArr[0] = i3;
            if (!Boolean.TRUE.equals(nativeRegExp.executeRegExp(context, scriptable, this, str, iArr, 0))) {
                iArr[0] = i4;
                iArr2[0] = 1;
                zArr[0] = false;
                return length;
            }
            i = iArr[0];
            iArr[0] = i4;
            zArr[0] = true;
            i2 = this.lastMatch.length;
            iArr2[0] = i2;
            if (i2 != 0 || i != iArr[0]) {
                break;
            }
            if (i != length) {
                i3 = i + 1;
            } else if (languageVersion == 120) {
                iArr2[0] = 1;
            } else {
                i = -1;
            }
        }
        i -= i2;
        SubString[] subStringArr = this.parens;
        int length2 = subStringArr == null ? 0 : subStringArr.length;
        strArr[0] = new String[length2];
        for (int i5 = 0; i5 < length2; i5++) {
            strArr[0][i5] = getParenSubString(i5).toString();
        }
        return i;
    }
}
