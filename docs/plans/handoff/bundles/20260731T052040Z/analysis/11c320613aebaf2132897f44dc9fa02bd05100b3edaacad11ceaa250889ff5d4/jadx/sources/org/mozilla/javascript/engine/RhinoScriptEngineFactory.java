package org.mozilla.javascript.engine;

import androidx.compose.ui.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineFactory;
import org.mozilla.javascript.Context;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RhinoScriptEngineFactory implements ScriptEngineFactory {
    public static final String NAME = "rhino";
    private static final String LANGUAGE = "javascript";
    private static final List<String> NAMES = Arrays.asList(NAME, "Rhino", LANGUAGE, "JavaScript");
    private static final List<String> EXTENSIONS = Collections.singletonList("js");
    private static final List<String> MIME_TYPES = Arrays.asList("application/javascript", "application/ecmascript", "text/javascript", "text/ecmascript");
    private static final String LANGUAGE_VERSION = String.valueOf(200);

    public String getEngineName() {
        return NAME;
    }

    public String getEngineVersion() {
        Context enter = Context.enter();
        try {
            String implementationVersion = enter.getImplementationVersion();
            if (implementationVersion == null) {
                implementationVersion = "unknown";
            }
            enter.close();
            return implementationVersion;
        } catch (Throwable th) {
            if (enter != null) {
                try {
                    enter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public List<String> getExtensions() {
        return EXTENSIONS;
    }

    public String getLanguageName() {
        return LANGUAGE;
    }

    public String getLanguageVersion() {
        return LANGUAGE_VERSION;
    }

    public String getMethodCallSyntax(String str, String str2, String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('.');
        sb.append(str2);
        sb.append('(');
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(strArr[i]);
        }
        sb.append(");");
        return sb.toString();
    }

    public List<String> getMimeTypes() {
        return MIME_TYPES;
    }

    public List<String> getNames() {
        return NAMES;
    }

    public String getOutputStatement(String str) {
        return Modifier.CC.m("print('", str, "');");
    }

    public Object getParameter(String str) {
        str.getClass();
        switch (str) {
            case "javax.script.engine_version":
                return getEngineVersion();
            case "javax.script.engine":
                return getEngineName();
            case "javax.script.language":
                return getLanguageName();
            case "javax.script.language_version":
                return getLanguageVersion();
            case "javax.script.name":
                return NAME;
            default:
                return null;
        }
    }

    public String getProgram(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
            sb.append(";\n");
        }
        return sb.toString();
    }

    public ScriptEngine getScriptEngine() {
        return new RhinoScriptEngine(this);
    }
}
