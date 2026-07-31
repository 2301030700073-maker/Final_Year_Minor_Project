package org.mozilla.javascript.engine;

import javax.script.CompiledScript;
import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import org.mozilla.javascript.Script;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RhinoCompiledScript extends CompiledScript {
    private final RhinoScriptEngine engine;
    private final Script script;

    public RhinoCompiledScript(RhinoScriptEngine rhinoScriptEngine, Script script) {
        this.engine = rhinoScriptEngine;
        this.script = script;
    }

    public Object eval(ScriptContext scriptContext) {
        return this.engine.eval(this.script, scriptContext);
    }

    public ScriptEngine getEngine() {
        return this.engine;
    }
}
