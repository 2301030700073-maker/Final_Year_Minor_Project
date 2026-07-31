package org.mozilla.javascript.optimizer;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.IRFactory;
import org.mozilla.javascript.JavaAdapter;
import org.mozilla.javascript.Parser;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.ScriptNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ClassCompiler {
    private CompilerEnvirons compilerEnv;
    private String mainMethodClassName;
    private Class<?> targetExtends;
    private Class<?>[] targetImplements;

    public ClassCompiler(CompilerEnvirons compilerEnvirons) {
        if (compilerEnvirons == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            throw null;
        }
        this.compilerEnv = compilerEnvirons;
        this.mainMethodClassName = "org.mozilla.javascript.optimizer.OptRuntime";
    }

    public Object[] compileToClassFiles(String str, String str2, int i, String str3) {
        ScriptNode transformTree = new IRFactory(this.compilerEnv, str).transformTree(new Parser(this.compilerEnv).parse(str, str2, i));
        if (this.compilerEnv.isGeneratingSource()) {
            transformTree.setRawSource(str);
            transformTree.setRawSourceBounds(0, str.length());
        }
        Class<?> targetExtends = getTargetExtends();
        Class<?>[] targetImplements = getTargetImplements();
        boolean z = targetImplements == null && targetExtends == null;
        String makeAuxiliaryClassName = z ? str3 : makeAuxiliaryClassName(str3, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        Codegen codegen = new Codegen();
        codegen.setMainMethodClass(this.mainMethodClassName);
        byte[] compileToClassFile = codegen.compileToClassFile(this.compilerEnv, makeAuxiliaryClassName, transformTree, str, false);
        if (z) {
            return new Object[]{makeAuxiliaryClassName, compileToClassFile};
        }
        int functionCount = transformTree.getFunctionCount();
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 != functionCount; i2++) {
            FunctionNode functionNode = transformTree.getFunctionNode(i2);
            String name = functionNode.getName();
            if (name != null && name.length() != 0) {
                hashMap.put(name, Integer.valueOf(functionNode.getParamCount()));
            }
        }
        if (targetExtends == null) {
            targetExtends = ScriptRuntime.ObjectClass;
        }
        return new Object[]{str3, JavaAdapter.createAdapterCode(hashMap, str3, targetExtends, targetImplements, makeAuxiliaryClassName), makeAuxiliaryClassName, compileToClassFile};
    }

    public CompilerEnvirons getCompilerEnv() {
        return this.compilerEnv;
    }

    public String getMainMethodClass() {
        return this.mainMethodClassName;
    }

    public Class<?> getTargetExtends() {
        return this.targetExtends;
    }

    public Class<?>[] getTargetImplements() {
        Class<?>[] clsArr = this.targetImplements;
        if (clsArr == null) {
            return null;
        }
        return (Class[]) clsArr.clone();
    }

    public String makeAuxiliaryClassName(String str, String str2) {
        return Owner.CC.m$1(str, str2);
    }

    public void setMainMethodClass(String str) {
        this.mainMethodClassName = str;
    }

    public void setTargetExtends(Class<?> cls) {
        this.targetExtends = cls;
    }

    public void setTargetImplements(Class<?>[] clsArr) {
        this.targetImplements = clsArr == null ? null : (Class[]) clsArr.clone();
    }
}
