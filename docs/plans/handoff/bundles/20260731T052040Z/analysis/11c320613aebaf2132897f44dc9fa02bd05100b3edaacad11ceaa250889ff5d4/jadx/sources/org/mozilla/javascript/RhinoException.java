package org.mozilla.javascript;

import java.io.CharArrayWriter;
import java.io.FilenameFilter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.security.AccessControlException;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RhinoException extends RuntimeException {
    private static final Pattern JAVA_STACK_PATTERN = Pattern.compile("_c_(.*)_\\d+");
    private static final long serialVersionUID = 1883500631321581169L;
    private static StackStyle stackStyle;
    private int columnNumber;
    int[] interpreterLineData;
    Object interpreterStackInfo;
    private int lineNumber;
    private String lineSource;
    private String sourceName;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: org.mozilla.javascript.RhinoException$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$mozilla$javascript$StackStyle;

        static {
            int[] iArr = new int[StackStyle.values().length];
            $SwitchMap$org$mozilla$javascript$StackStyle = iArr;
            try {
                iArr[StackStyle.MOZILLA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.MOZILLA_LF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.V8.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.RHINO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        StackStyle stackStyle2 = StackStyle.RHINO;
        stackStyle = stackStyle2;
        try {
            String property = System.getProperty("rhino.stack.style");
            if (property != null) {
                if ("Rhino".equalsIgnoreCase(property)) {
                    stackStyle = stackStyle2;
                } else if ("Mozilla".equalsIgnoreCase(property)) {
                    stackStyle = StackStyle.MOZILLA;
                } else if ("V8".equalsIgnoreCase(property)) {
                    stackStyle = StackStyle.V8;
                }
            }
        } catch (AccessControlException unused) {
        }
    }

    public RhinoException() {
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            createInterpreter.captureStackInfo(this);
        }
    }

    public static String formatStackTrace(ScriptStackElement[] scriptStackElementArr, String str) {
        StringBuilder sb = new StringBuilder();
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        if (stackStyle == StackStyle.V8 && !"null".equals(str)) {
            sb.append(str);
            sb.append(systemProperty);
        }
        for (ScriptStackElement scriptStackElement : scriptStackElementArr) {
            int i = AnonymousClass1.$SwitchMap$org$mozilla$javascript$StackStyle[stackStyle.ordinal()];
            if (i == 1) {
                scriptStackElement.renderMozillaStyle(sb);
                sb.append(systemProperty);
            } else if (i == 2) {
                scriptStackElement.renderMozillaStyle(sb);
                sb.append('\n');
            } else if (i == 3) {
                scriptStackElement.renderV8Style(sb);
                sb.append(systemProperty);
            } else if (i == 4) {
                scriptStackElement.renderJavaStyle(sb);
                sb.append(systemProperty);
            }
        }
        return sb.toString();
    }

    private String generateStackTrace() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        super.printStackTrace(new PrintWriter(charArrayWriter));
        String charArrayWriter2 = charArrayWriter.toString();
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            return createInterpreter.getPatchedStack(this, charArrayWriter2);
        }
        return null;
    }

    public static StackStyle getStackStyle() {
        return stackStyle;
    }

    public static void setStackStyle(StackStyle stackStyle2) {
        stackStyle = stackStyle2;
    }

    public static void useMozillaStackStyle(boolean z) {
        stackStyle = z ? StackStyle.MOZILLA : StackStyle.RHINO;
    }

    public static boolean usesMozillaStackStyle() {
        return stackStyle == StackStyle.MOZILLA;
    }

    public final int columnNumber() {
        return this.columnNumber;
    }

    public String details() {
        return super.getMessage();
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String details = details();
        if (this.sourceName == null || this.lineNumber <= 0) {
            return details;
        }
        StringBuilder sb = new StringBuilder(details);
        sb.append(" (");
        sb.append(this.sourceName);
        if (this.lineNumber > 0) {
            sb.append('#');
            sb.append(this.lineNumber);
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.ScriptStackElement[] getScriptStack(int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.RhinoException.getScriptStack(int, java.lang.String):org.mozilla.javascript.ScriptStackElement[]");
    }

    public String getScriptStackTrace(int i, String str) {
        return formatStackTrace(getScriptStack(i, str), details());
    }

    public final void initColumnNumber(int i) {
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
        } else if (this.columnNumber <= 0) {
            this.columnNumber = i;
        } else {
            Node$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final void initLineNumber(int i) {
        if (i <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
        } else if (this.lineNumber <= 0) {
            this.lineNumber = i;
        } else {
            Node$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final void initLineSource(String str) {
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        } else if (this.lineSource == null) {
            this.lineSource = str;
        } else {
            Node$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final void initSourceName(String str) {
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        } else if (this.sourceName == null) {
            this.sourceName = str;
        } else {
            Node$$ExternalSyntheticBUOutline0.m();
        }
    }

    public final int lineNumber() {
        return this.lineNumber;
    }

    public final String lineSource() {
        return this.lineSource;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        if (this.interpreterStackInfo == null) {
            super.printStackTrace(printWriter);
        } else {
            printWriter.print(generateStackTrace());
        }
    }

    public final void recordErrorOrigin(String str, int i, String str2, int i2) {
        if (i == -1) {
            i = 0;
        }
        if (str != null) {
            initSourceName(str);
        }
        if (i != 0) {
            initLineNumber(i);
        }
        if (str2 != null) {
            initLineSource(str2);
        }
        if (i2 != 0) {
            initColumnNumber(i2);
        }
    }

    public final String sourceName() {
        return this.sourceName;
    }

    public RhinoException(String str) {
        super(str);
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            createInterpreter.captureStackInfo(this);
        }
    }

    public String getScriptStackTrace() {
        return getScriptStackTrace(-1, null);
    }

    @Deprecated
    public String getScriptStackTrace(FilenameFilter filenameFilter) {
        return getScriptStackTrace();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        if (this.interpreterStackInfo == null) {
            super.printStackTrace(printStream);
        } else {
            printStream.print(generateStackTrace());
        }
    }

    public ScriptStackElement[] getScriptStack() {
        return getScriptStack(-1, null);
    }
}
