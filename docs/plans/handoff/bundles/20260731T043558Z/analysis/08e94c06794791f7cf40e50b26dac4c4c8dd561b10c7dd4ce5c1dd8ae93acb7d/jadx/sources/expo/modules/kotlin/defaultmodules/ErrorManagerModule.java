package expo.modules.kotlin.defaultmodules;

import android.os.Bundle;
import androidx.tracing.Trace;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ErrorManagerModule.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, d2 = {"Lexpo/modules/kotlin/defaultmodules/ErrorManagerModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "reportExceptionToLogBox", "", "codedException", "Lexpo/modules/kotlin/exception/CodedException;", "reportWarningToLogBox", "warning", "", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ErrorManagerModule extends Module {
    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        ErrorManagerModule errorManagerModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (errorManagerModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(errorManagerModule);
            moduleDefinitionBuilder.Name("ExpoModulesCoreErrorManager");
            moduleDefinitionBuilder.Events("ExpoModulesCoreErrorManager.onNewException", "ExpoModulesCoreErrorManager.onNewWarning");
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    public final void reportExceptionToLogBox(CodedException codedException) {
        Intrinsics.checkNotNullParameter(codedException, "codedException");
        Bundle bundle = new Bundle();
        String message = codedException.getMessage();
        if (message == null) {
            message = codedException.toString();
        }
        bundle.putString("message", message);
        Unit unit = Unit.INSTANCE;
        sendEvent("ExpoModulesCoreErrorManager.onNewException", bundle);
    }

    public final void reportWarningToLogBox(String warning) {
        Intrinsics.checkNotNullParameter(warning, "warning");
        Bundle bundle = new Bundle();
        bundle.putString("message", warning);
        Unit unit = Unit.INSTANCE;
        sendEvent("ExpoModulesCoreErrorManager.onNewWarning", bundle);
    }
}
