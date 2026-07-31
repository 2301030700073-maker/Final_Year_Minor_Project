package coil3.network.okhttp.internal;

import android.view.KeyEvent;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils$1;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.RealCall;
import org.wikipedia.search.SearchResultsViewModel;
import org.wikipedia.search.StandardSearchResults;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallsKt$await$2$1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public Object $this_await;

    public /* synthetic */ CallsKt$await$2$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$this_await = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((RealCall) this.$this_await).cancel();
                return unit;
            case 1:
                float[] fArr = ((Matrix) obj).values;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) this.$this_await;
                if (layoutCoordinates.isAttached()) {
                    RulerKt.findRootCoordinates(layoutCoordinates).mo524transformFromEL8BTi8(layoutCoordinates, fArr);
                }
                return unit;
            case 2:
                KeyEvent keyEvent = ((androidx.compose.ui.input.key.KeyEvent) obj).nativeKeyEvent;
                SelectionManager selectionManager = (SelectionManager) this.$this_await;
                if (BasicTextKt.platformDefaultKeyMapping.m187mapZmokQxo(keyEvent) == KeyCommand.COPY) {
                    selectionManager.copy$foundation();
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 3:
                ((CancellationHandle) this.$this_await).cancel();
                return unit;
            case 4:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) this.$this_await;
                if (pointerInteropFilter != null) {
                    pointerInteropFilter.disallowIntercept = booleanValue;
                }
                return unit;
            case 5:
                Name name = (Name) obj;
                ModuleDescriptorImpl builtInsModule = ((KotlinBuiltIns) this.$this_await).getBuiltInsModule();
                FqName fqName = StandardNames.BUILT_INS_PACKAGE_FQ_NAME;
                LazyScopeAdapter lazyScopeAdapter = builtInsModule.getPackage(fqName).memberScope;
                if (lazyScopeAdapter == null) {
                    KotlinBuiltIns.$$$reportNull$$$0(11);
                    throw null;
                }
                ClassifierDescriptor contributedClassifier = lazyScopeAdapter.getContributedClassifier(name, NoLookupLocation.FROM_BUILTINS);
                if (contributedClassifier == null) {
                    Gson$$ExternalSyntheticBUOutline0.m(fqName.child(name), " is not found", "Built-in class ");
                    return null;
                }
                if (contributedClassifier instanceof ModuleAwareClassDescriptor) {
                    return (ModuleAwareClassDescriptor) contributedClassifier;
                }
                throw new AssertionError("Must be a class descriptor " + name + ", but was " + contributedClassifier);
            case 6:
                AbstractClassDescriptor.AnonymousClass1 anonymousClass1 = (AbstractClassDescriptor.AnonymousClass1) this.$this_await;
                ((KotlinTypeRefiner$Default) obj).getClass();
                return (SimpleType) anonymousClass1.this$0.defaultType.invoke();
            case 7:
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) obj;
                if (callableMemberDescriptor != null) {
                    ((DescriptorResolverUtils$1) this.$this_await).val$errorReporter.reportCannotInferVisibility(callableMemberDescriptor);
                    return unit;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'descriptor' of kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1.invoke must not be null");
                return null;
            case 8:
                ((CancellableContinuationImpl) this.$this_await).resumeWith(unit);
                return unit;
            case 9:
                ((EnumEntriesList) ((EnumEntries) this.$this_await)).get(((Number) obj).intValue());
                return null;
            default:
                StandardSearchResults standardSearchResults = (StandardSearchResults) obj;
                standardSearchResults.getClass();
                SearchResultsViewModel searchResultsViewModel = (SearchResultsViewModel) this.$this_await;
                String str = standardSearchResults.xSearchIdPrefix;
                if (str == null) {
                    str = "";
                }
                searchResultsViewModel.lastXSearchIdPrefix = str;
                String str2 = standardSearchResults.xSearchIdFullText;
                searchResultsViewModel.lastXSearchIdFullText = str2 != null ? str2 : "";
                StateFlowImpl stateFlowImpl = searchResultsViewModel._lexicalResultsForLogging;
                ArrayList arrayList = standardSearchResults.results;
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, arrayList);
                return unit;
        }
    }

    public /* synthetic */ CallsKt$await$2$1() {
        this.$r8$classId = 4;
    }
}
