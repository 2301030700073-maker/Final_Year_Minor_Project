package kotlinx.coroutines.rx3;

import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.widget.Button;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.Density;
import androidx.core.os.BundleKt;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.OperationKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.reactivex.rxjava3.disposables.Disposable;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.ReversedListReadOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatcherMatchResult;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$CONTEXTUAL;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import net.newpipe.app.screen.about.AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;
import net.newpipe.app.screen.about.LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;
import okhttp3.Headers;
import okio.Path;
import org.jetbrains.compose.resources.ImageCache$Vector;
import org.jetbrains.compose.resources.vector.xmldom.ElementImpl;
import org.jsoup.nodes.Printer;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.model.SearchHistoryEntry;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.FeedState;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RxAwaitKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ RxAwaitKt$$ExternalSyntheticLambda0(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.$r8$classId = 3;
        this.f$0 = mutexImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [org.schabi.newpipe.database.history.model.SearchHistoryEntry] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        int i2 = 2;
        final int i3 = 0;
        final int i4 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((Disposable) obj2).dispose();
                return unit;
            case 1:
                obj.getClass();
                return ((ImmLeaksCleaner$$ExternalSyntheticLambda0) obj2).invoke();
            case 2:
                return ((MatcherMatchResult$groups$1) obj2).get(((Integer) obj).intValue());
            case 3:
                ((MutexImpl) obj2).unlock(null);
                return unit;
            case 4:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, "type", StringSerializer.descriptor);
                ClassSerialDescriptorBuilder.element$default(classSerialDescriptorBuilder, ES6Iterator.VALUE_PROPERTY, OperationKt.buildSerialDescriptor$default("kotlinx.serialization.Polymorphic<" + ((PolymorphicSerializer) obj2).baseClass.getSimpleName() + '>', SerialKind$CONTEXTUAL.INSTANCE, new SerialDescriptor[0]));
                classSerialDescriptorBuilder.annotations = EmptyList.INSTANCE;
                return unit;
            case 5:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder2.getClass();
                List list = (List) ((ObjectSerializer) obj2)._annotations;
                list.getClass();
                classSerialDescriptorBuilder2.annotations = list;
                return unit;
            case 6:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj2;
                int intValue = ((Integer) obj).intValue();
                return serialDescriptor.getElementName(intValue) + ": " + serialDescriptor.getElementDescriptor(intValue).getSerialName();
            case 7:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                List list2 = (List) ((MutableState) obj2).getValue();
                lazyListIntervalContent.intervals.addInterval(list2.size(), new LazyListInterval(null, new AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3(1, list2), new ComposableLambdaImpl(802480018, true, new LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4(i3, list2))));
                return unit;
            case 8:
                Density density = (Density) obj2;
                byte[] bArr = (byte[]) obj;
                bArr.getClass();
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setNamespaceAware(true);
                Element documentElement = newInstance.newDocumentBuilder().parse(new InputSource(new ByteArrayInputStream(bArr))).getDocumentElement();
                documentElement.getClass();
                ElementImpl elementImpl = new ElementImpl(documentElement);
                density.getClass();
                Headers.Builder builder = new Headers.Builder(2);
                float parseDp = BundleKt.parseDp(OperationKt.attributeOrNull(elementImpl, "width"), density);
                float parseDp2 = BundleKt.parseDp(OperationKt.attributeOrNull(elementImpl, "height"), density);
                String attributeOrNull = OperationKt.attributeOrNull(elementImpl, "viewportWidth");
                float parseFloat = attributeOrNull != null ? Float.parseFloat(attributeOrNull) : 0.0f;
                String attributeOrNull2 = OperationKt.attributeOrNull(elementImpl, "viewportHeight");
                ImageVector.Builder builder2 = new ImageVector.Builder(parseDp, parseDp2, parseFloat, attributeOrNull2 != null ? Float.parseFloat(attributeOrNull2) : 0.0f, Intrinsics.areEqual(OperationKt.attributeOrNull(elementImpl, "autoMirrored"), "true"), 97);
                OperationKt.parseVectorNodes(elementImpl, builder2, builder);
                return new ImageCache$Vector(builder2.build());
            case 9:
                MatcherMatchResult matcherMatchResult = (MatcherMatchResult) obj;
                matcherMatchResult.getClass();
                return (CharSequence) ((List) obj2).get(Integer.parseInt((String) ((ReversedListReadOnly) matcherMatchResult.getGroupValues()).get(1)) - 1);
            case 10:
                final Context context = (Context) obj2;
                Module module = (Module) obj;
                module.getClass();
                boolean z = context instanceof Application;
                Kind kind = Kind.Singleton;
                if (z) {
                    Function2 function2 = new Function2() { // from class: org.koin.android.ext.koin.KoinExtKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i5 = i3;
                            Context context2 = context;
                            Scope scope = (Scope) obj3;
                            ParametersHolder parametersHolder = (ParametersHolder) obj4;
                            switch (i5) {
                                case 0:
                                    scope.getClass();
                                    parametersHolder.getClass();
                                    return (Application) context2;
                                default:
                                    scope.getClass();
                                    parametersHolder.getClass();
                                    return context2;
                            }
                        }
                    };
                    ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Application.class);
                    StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                    BeanDefinition beanDefinition = new BeanDefinition(stringQualifier, orCreateKotlinClass, null, function2, kind);
                    SingleInstanceFactory singleInstanceFactory = new SingleInstanceFactory(beanDefinition);
                    module.indexPrimaryType(singleInstanceFactory);
                    ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Context.class);
                    beanDefinition._secondaryTypes.add(orCreateKotlinClass2);
                    module.mappings.put(KClassExtKt.getFullName(orCreateKotlinClass2) + "::" + stringQualifier, singleInstanceFactory);
                } else {
                    module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(Context.class), null, new Function2() { // from class: org.koin.android.ext.koin.KoinExtKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i5 = i4;
                            Context context2 = context;
                            Scope scope = (Scope) obj3;
                            ParametersHolder parametersHolder = (ParametersHolder) obj4;
                            switch (i5) {
                                case 0:
                                    scope.getClass();
                                    parametersHolder.getClass();
                                    return (Application) context2;
                                default:
                                    scope.getClass();
                                    parametersHolder.getClass();
                                    return context2;
                            }
                        }
                    }, kind)));
                }
                return unit;
            case 11:
                FeedDAO_Impl feedDAO_Impl = (FeedDAO_Impl) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT MIN(last_updated) FROM feed_last_updated");
                try {
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        Long valueOf = prepare.isNull(0) ? null : Long.valueOf(prepare.getLong(0));
                        Path.Companion companion = feedDAO_Impl.__converters;
                        arrayList.add(Path.Companion.offsetDateTimeFromTimestamp(valueOf));
                    }
                    prepare.close();
                    return arrayList;
                } finally {
                    prepare.close();
                }
            case 12:
                SearchHistoryDAO_Impl searchHistoryDAO_Impl = (SearchHistoryDAO_Impl) obj2;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM search_history WHERE id = (SELECT MAX(id) FROM search_history)");
                try {
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "creation_date");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "search");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, TtmlNode.ATTR_ID);
                    if (prepare.step()) {
                        Long valueOf2 = prepare.isNull(columnIndexOrThrow) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow));
                        Path.Companion companion2 = searchHistoryDAO_Impl.__converters;
                        r2 = new SearchHistoryEntry(Path.Companion.offsetDateTimeFromTimestamp(valueOf2), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.getLong(columnIndexOrThrow4));
                    }
                    return r2;
                } finally {
                    prepare.close();
                }
            case 13:
                FeedFragment feedFragment = (FeedFragment) obj2;
                FeedState feedState = (FeedState) obj;
                FeedFragment.Companion companion3 = FeedFragment.Companion;
                if (feedState != null) {
                    feedFragment.handleResult(feedState);
                }
                return unit;
            case 14:
                FeedGroupReorderDialog feedGroupReorderDialog = (FeedGroupReorderDialog) obj2;
                FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent feedGroupReorderDialogViewModel$DialogEvent$SuccessEvent = (FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent) obj;
                if (Intrinsics.areEqual(feedGroupReorderDialogViewModel$DialogEvent$SuccessEvent, FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent.INSTANCE$1)) {
                    Printer printer = feedGroupReorderDialog._binding;
                    if (printer != null) {
                        ((Button) printer.accum).setEnabled(false);
                    }
                    feedGroupReorderDialog.mCancelable = false;
                    Dialog dialog = feedGroupReorderDialog.mDialog;
                    if (dialog != null) {
                        dialog.setCancelable(false);
                    }
                } else {
                    if (!Intrinsics.areEqual(feedGroupReorderDialogViewModel$DialogEvent$SuccessEvent, FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent.INSTANCE)) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    feedGroupReorderDialog.dismissInternal(false, false);
                }
                return unit;
            default:
                Image.ResolutionLevel resolutionLevel = (Image.ResolutionLevel) obj2;
                Image image = (Image) obj;
                image.getClass();
                Image.ResolutionLevel estimatedResolutionLevel = image.getEstimatedResolutionLevel();
                int i5 = ImageStrategy.WhenMappings.$EnumSwitchMapping$0[estimatedResolutionLevel.ordinal()];
                if (i5 == 1) {
                    i2 = 3;
                } else if (estimatedResolutionLevel == resolutionLevel) {
                    i2 = 0;
                } else if (i5 == 2) {
                    i2 = 1;
                }
                return Integer.valueOf(i2);
        }
    }

    public /* synthetic */ RxAwaitKt$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
