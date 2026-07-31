package okio.internal;

import android.util.SparseArray;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.room.Room;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.newpipe.app.model.Library;
import net.newpipe.app.model.Link;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.navigation.NavModuleKt$$ExternalSyntheticLambda1;
import net.newpipe.app.navigation.Navigator;
import net.newpipe.app.platform.AndroidBuildInfo;
import net.newpipe.app.platform.AndroidResourceHandler;
import net.newpipe.app.platform.AndroidShareHandler;
import net.newpipe.app.platform.BuildInfo;
import net.newpipe.app.platform.ResourceHandler;
import net.newpipe.app.platform.ShareHandler;
import okhttp3.ConnectionPool;
import okio.ByteString;
import okio.Path;
import org.acra.collector.ConfigurationCollector;
import org.acra.config.RetryPolicy$FailedSender;
import org.jetbrains.compose.resources.ResourceItem;
import org.jetbrains.compose.resources.vector.xmldom.Element;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.database.history.model.StreamHistoryEntry;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.w3c.dom.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ZipFilesKt$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ZipFilesKt$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SparseArray valueArrays$lambda$11;
        SQLiteStatement prepare;
        Long l;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i3) {
            case 0:
                ((ZipEntry) obj).getClass();
                return Boolean.TRUE;
            case 1:
                final byte b = 0;
                Module module = (Module) obj;
                module.getClass();
                Room.buildSingle$default(module, Reflection.getOrCreateKotlinClass(Navigator.class), new NavModuleKt$$ExternalSyntheticLambda1(b, b));
                TypeQualifier typeQualifier = new TypeQualifier(Reflection.getOrCreateKotlinClass(Destination.About.class));
                Function2 function2 = new Function2() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        switch (b) {
                            case 0:
                                final Scope scope = (Scope) obj2;
                                scope.getClass();
                                ((ParametersHolder) obj3).getClass();
                                final int i4 = 0;
                                return new Function1() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1.1

                                    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
                                    /* renamed from: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2, reason: invalid class name */
                                    public final class AnonymousClass2 implements Function1 {
                                        public static final AnonymousClass2 INSTANCE = new AnonymousClass2(0);
                                        public static final AnonymousClass2 INSTANCE$1 = new AnonymousClass2(1);
                                        public final /* synthetic */ int $r8$classId;

                                        public /* synthetic */ AnonymousClass2(int i) {
                                            this.$r8$classId = i;
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            switch (this.$r8$classId) {
                                            }
                                            return obj.toString();
                                        }
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i5 = i4;
                                        Unit unit2 = Unit.INSTANCE;
                                        final Scope scope2 = scope;
                                        final int i6 = 1;
                                        switch (i5) {
                                            case 0:
                                                EntryProviderScope entryProviderScope = (EntryProviderScope) obj4;
                                                entryProviderScope.getClass();
                                                final int i7 = 0;
                                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i7;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope2;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.About.class), AnonymousClass2.INSTANCE, composableLambdaImpl);
                                                break;
                                            default:
                                                EntryProviderScope entryProviderScope2 = (EntryProviderScope) obj4;
                                                entryProviderScope2.getClass();
                                                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i6;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope2;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope2.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.Settings.class), AnonymousClass2.INSTANCE$1, composableLambdaImpl2);
                                                break;
                                        }
                                        return unit2;
                                    }
                                };
                            default:
                                final Scope scope2 = (Scope) obj2;
                                scope2.getClass();
                                ((ParametersHolder) obj3).getClass();
                                final int i5 = 1;
                                return new Function1() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1.1

                                    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
                                    /* renamed from: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2, reason: invalid class name */
                                    public final class AnonymousClass2 implements Function1 {
                                        public static final AnonymousClass2 INSTANCE = new AnonymousClass2(0);
                                        public static final AnonymousClass2 INSTANCE$1 = new AnonymousClass2(1);
                                        public final /* synthetic */ int $r8$classId;

                                        public /* synthetic */ AnonymousClass2(int i) {
                                            this.$r8$classId = i;
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            switch (this.$r8$classId) {
                                            }
                                            return obj.toString();
                                        }
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i52 = i5;
                                        Unit unit2 = Unit.INSTANCE;
                                        final Scope scope22 = scope2;
                                        final int i6 = 1;
                                        switch (i52) {
                                            case 0:
                                                EntryProviderScope entryProviderScope = (EntryProviderScope) obj4;
                                                entryProviderScope.getClass();
                                                final int i7 = 0;
                                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i7;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.About.class), AnonymousClass2.INSTANCE, composableLambdaImpl);
                                                break;
                                            default:
                                                EntryProviderScope entryProviderScope2 = (EntryProviderScope) obj4;
                                                entryProviderScope2.getClass();
                                                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i6;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope2.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.Settings.class), AnonymousClass2.INSTANCE$1, composableLambdaImpl2);
                                                break;
                                        }
                                        return unit2;
                                    }
                                };
                        }
                    }
                };
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Function1.class);
                StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
                Kind kind = Kind.Singleton;
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, typeQualifier, function2, kind)));
                final int i4 = 1;
                module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(Function1.class), new TypeQualifier(Reflection.getOrCreateKotlinClass(Destination.Settings.class)), new Function2() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        switch (i4) {
                            case 0:
                                final Scope scope = (Scope) obj2;
                                scope.getClass();
                                ((ParametersHolder) obj3).getClass();
                                final int i42 = 0;
                                return new Function1() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1.1

                                    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
                                    /* renamed from: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2, reason: invalid class name */
                                    public final class AnonymousClass2 implements Function1 {
                                        public static final AnonymousClass2 INSTANCE = new AnonymousClass2(0);
                                        public static final AnonymousClass2 INSTANCE$1 = new AnonymousClass2(1);
                                        public final /* synthetic */ int $r8$classId;

                                        public /* synthetic */ AnonymousClass2(int i) {
                                            this.$r8$classId = i;
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            switch (this.$r8$classId) {
                                            }
                                            return obj.toString();
                                        }
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i52 = i42;
                                        Unit unit2 = Unit.INSTANCE;
                                        final Scope scope22 = scope;
                                        final int i6 = 1;
                                        switch (i52) {
                                            case 0:
                                                EntryProviderScope entryProviderScope = (EntryProviderScope) obj4;
                                                entryProviderScope.getClass();
                                                final int i7 = 0;
                                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i7;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.About.class), AnonymousClass2.INSTANCE, composableLambdaImpl);
                                                break;
                                            default:
                                                EntryProviderScope entryProviderScope2 = (EntryProviderScope) obj4;
                                                entryProviderScope2.getClass();
                                                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i6;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope2.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.Settings.class), AnonymousClass2.INSTANCE$1, composableLambdaImpl2);
                                                break;
                                        }
                                        return unit2;
                                    }
                                };
                            default:
                                final Scope scope2 = (Scope) obj2;
                                scope2.getClass();
                                ((ParametersHolder) obj3).getClass();
                                final int i5 = 1;
                                return new Function1() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1.1

                                    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
                                    /* renamed from: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$2, reason: invalid class name */
                                    public final class AnonymousClass2 implements Function1 {
                                        public static final AnonymousClass2 INSTANCE = new AnonymousClass2(0);
                                        public static final AnonymousClass2 INSTANCE$1 = new AnonymousClass2(1);
                                        public final /* synthetic */ int $r8$classId;

                                        public /* synthetic */ AnonymousClass2(int i) {
                                            this.$r8$classId = i;
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            switch (this.$r8$classId) {
                                            }
                                            return obj.toString();
                                        }
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        int i52 = i5;
                                        Unit unit2 = Unit.INSTANCE;
                                        final Scope scope22 = scope2;
                                        final int i6 = 1;
                                        switch (i52) {
                                            case 0:
                                                EntryProviderScope entryProviderScope = (EntryProviderScope) obj4;
                                                entryProviderScope.getClass();
                                                final int i7 = 0;
                                                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i7;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.About.class), AnonymousClass2.INSTANCE, composableLambdaImpl);
                                                break;
                                            default:
                                                EntryProviderScope entryProviderScope2 = (EntryProviderScope) obj4;
                                                entryProviderScope2.getClass();
                                                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(2040161391, true, new Function3() { // from class: net.newpipe.app.navigation.NavModuleKt$navModule$lambda$0$.inlined.navigation.default.1.1.1
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                                        int i8 = i6;
                                                        Unit unit3 = Unit.INSTANCE;
                                                        Scope scope3 = scope22;
                                                        switch (i8) {
                                                            case 0:
                                                                Composer composer = (Composer) obj6;
                                                                int intValue = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue & 6) == 0) {
                                                                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj5) : ((GapComposer) composer).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer = (GapComposer) composer;
                                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                                                    gapComposer.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f11lambda$1159499601.invoke(scope3, obj5, gapComposer, Integer.valueOf((intValue << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                            default:
                                                                Composer composer2 = (Composer) obj6;
                                                                int intValue2 = ((Number) obj7).intValue();
                                                                obj5.getClass();
                                                                if ((intValue2 & 6) == 0) {
                                                                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(obj5) : ((GapComposer) composer2).changedInstance(obj5) ? 4 : 2;
                                                                }
                                                                GapComposer gapComposer2 = (GapComposer) composer2;
                                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                                                    gapComposer2.skipToGroupEnd();
                                                                    break;
                                                                } else {
                                                                    NavDisplayKt.f12lambda$1962361402.invoke(scope3, obj5, gapComposer2, Integer.valueOf((intValue2 << 3) & Token.ASSIGN_MOD));
                                                                    break;
                                                                }
                                                        }
                                                        return unit3;
                                                    }
                                                });
                                                entryProviderScope2.addEntryProvider(Reflection.getOrCreateKotlinClass(Destination.Settings.class), AnonymousClass2.INSTANCE$1, composableLambdaImpl2);
                                                break;
                                        }
                                        return unit2;
                                    }
                                };
                        }
                    }
                }, kind)));
                return unit;
            case 2:
                Module module2 = (Module) obj;
                module2.getClass();
                byte b2 = 0;
                Room.bind(Room.buildSingle$default(module2, Reflection.getOrCreateKotlinClass(AndroidBuildInfo.class), new NavModuleKt$$ExternalSyntheticLambda1(4, b2)), Reflection.getOrCreateKotlinClass(BuildInfo.class));
                Room.bind(Room.buildSingle$default(module2, Reflection.getOrCreateKotlinClass(AndroidResourceHandler.class), new NavModuleKt$$ExternalSyntheticLambda1(5, b2)), Reflection.getOrCreateKotlinClass(ResourceHandler.class));
                Room.bind(Room.buildSingle$default(module2, Reflection.getOrCreateKotlinClass(AndroidShareHandler.class), new NavModuleKt$$ExternalSyntheticLambda1(6, b2)), Reflection.getOrCreateKotlinClass(ShareHandler.class));
                return unit;
            case 3:
                ((String) obj).getClass();
                return unit;
            case 4:
                Link link = (Link) obj;
                link.getClass();
                return link.url;
            case 5:
                ((String) obj).getClass();
                return unit;
            case 6:
                Library library = (Library) obj;
                library.getClass();
                return library.id;
            case 7:
                ZipEntry zipEntry = (ZipEntry) obj;
                zipEntry.getClass();
                Path path = ResourceFileSystem.ROOT;
                return Boolean.valueOf(ByteString.Companion.access$keepPath(zipEntry.canonicalPath));
            case 8:
                valueArrays$lambda$11 = ConfigurationCollector.getValueArrays$lambda$11((ConfigurationCollector.Prefix) obj);
                return valueArrays$lambda$11;
            case 9:
                RetryPolicy$FailedSender retryPolicy$FailedSender = (RetryPolicy$FailedSender) obj;
                retryPolicy$FailedSender.getClass();
                return retryPolicy$FailedSender.sender.getClass().getName();
            case 10:
                RetryPolicy$FailedSender retryPolicy$FailedSender2 = (RetryPolicy$FailedSender) obj;
                retryPolicy$FailedSender2.getClass();
                return ResultKt.stackTraceToString(retryPolicy$FailedSender2.exception);
            case 11:
                ((byte[]) obj).getClass();
                throw new IllegalStateException("Android platform doesn't support SVG format.");
            case 12:
                ResourceItem resourceItem = (ResourceItem) obj;
                resourceItem.getClass();
                return resourceItem.path;
            case 13:
                Object obj2 = (Element) obj;
                obj2.getClass();
                String nodeName = ((Node) ((ConnectionPool) obj2).delegate).getNodeName();
                nodeName.getClass();
                return Boolean.valueOf(nodeName.equals("item"));
            case 14:
                ClassReference classReference = (ClassReference) obj;
                classReference.getClass();
                return KClassExtKt.getFullName(classReference);
            case 15:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase.getClass();
                frameworkSQLiteDatabase.execSQL("CREATE  INDEX `index_search_history_search` ON `search_history` (`search`)");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `streams` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT, `title` TEXT, `stream_type` TEXT, `duration` INTEGER, `uploader` TEXT, `thumbnail_url` TEXT)");
                frameworkSQLiteDatabase.execSQL("CREATE UNIQUE INDEX `index_streams_service_id_url` ON `streams` (`service_id`, `url`)");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `stream_history` (`stream_id` INTEGER NOT NULL, `access_date` INTEGER NOT NULL, `repeat_count` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `access_date`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )");
                frameworkSQLiteDatabase.execSQL("CREATE  INDEX `index_stream_history_stream_id` ON `stream_history` (`stream_id`)");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `stream_state` (`stream_id` INTEGER NOT NULL, `progress_time` INTEGER NOT NULL, PRIMARY KEY(`stream_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `thumbnail_url` TEXT)");
                frameworkSQLiteDatabase.execSQL("CREATE  INDEX `index_playlists_name` ON `playlists` (`name`)");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `playlist_stream_join` (`playlist_id` INTEGER NOT NULL, `stream_id` INTEGER NOT NULL, `join_index` INTEGER NOT NULL, PRIMARY KEY(`playlist_id`, `join_index`), FOREIGN KEY(`playlist_id`) REFERENCES `playlists`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                frameworkSQLiteDatabase.execSQL("CREATE UNIQUE INDEX `index_playlist_stream_join_playlist_id_join_index` ON `playlist_stream_join` (`playlist_id`, `join_index`)");
                frameworkSQLiteDatabase.execSQL("CREATE  INDEX `index_playlist_stream_join_stream_id` ON `playlist_stream_join` (`stream_id`)");
                frameworkSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `remote_playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `stream_count` INTEGER)");
                frameworkSQLiteDatabase.execSQL("CREATE  INDEX `index_remote_playlists_name` ON `remote_playlists` (`name`)");
                frameworkSQLiteDatabase.execSQL("CREATE UNIQUE INDEX `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)");
                frameworkSQLiteDatabase.execSQL("INSERT OR IGNORE INTO streams (service_id, url, title, stream_type, duration, uploader, thumbnail_url) SELECT service_id, url, title, 'VIDEO_STREAM', duration, uploader, thumbnail_url FROM watch_history ORDER BY creation_date DESC");
                frameworkSQLiteDatabase.execSQL("INSERT INTO stream_history (stream_id, access_date, repeat_count)SELECT uid, creation_date, 1 FROM watch_history INNER JOIN streams ON watch_history.service_id == streams.service_id AND watch_history.url == streams.url ORDER BY creation_date DESC");
                frameworkSQLiteDatabase.execSQL("DROP TABLE IF EXISTS watch_history");
                return unit;
            case 16:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase2 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase2.getClass();
                frameworkSQLiteDatabase2.execSQL("CREATE TABLE IF NOT EXISTS streams_new (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, service_id INTEGER NOT NULL, url TEXT NOT NULL, title TEXT NOT NULL, stream_type TEXT NOT NULL, duration INTEGER NOT NULL, uploader TEXT NOT NULL, thumbnail_url TEXT, view_count INTEGER, textual_upload_date TEXT, upload_date INTEGER, is_upload_date_approximation INTEGER)");
                frameworkSQLiteDatabase2.execSQL("INSERT INTO streams_new (uid, service_id, url, title, stream_type, duration, uploader, thumbnail_url, view_count, textual_upload_date, upload_date, is_upload_date_approximation) SELECT uid, service_id, url, ifnull(title, ''), ifnull(stream_type, 'VIDEO_STREAM'), ifnull(duration, 0), ifnull(uploader, ''), ifnull(thumbnail_url, ''), NULL, NULL, NULL, NULL FROM streams WHERE url IS NOT NULL");
                frameworkSQLiteDatabase2.execSQL("DROP TABLE streams");
                frameworkSQLiteDatabase2.execSQL("ALTER TABLE streams_new RENAME TO streams");
                frameworkSQLiteDatabase2.execSQL("CREATE UNIQUE INDEX index_streams_service_id_url ON streams (service_id, url)");
                frameworkSQLiteDatabase2.execSQL("CREATE TABLE IF NOT EXISTS feed (stream_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(stream_id, subscription_id), FOREIGN KEY(stream_id) REFERENCES streams(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                frameworkSQLiteDatabase2.execSQL("CREATE INDEX index_feed_subscription_id ON feed (subscription_id)");
                frameworkSQLiteDatabase2.execSQL("CREATE TABLE IF NOT EXISTS feed_group (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, icon_id INTEGER NOT NULL, sort_order INTEGER NOT NULL)");
                frameworkSQLiteDatabase2.execSQL("CREATE INDEX index_feed_group_sort_order ON feed_group (sort_order)");
                frameworkSQLiteDatabase2.execSQL("CREATE TABLE IF NOT EXISTS feed_group_subscription_join (group_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(group_id, subscription_id), FOREIGN KEY(group_id) REFERENCES feed_group(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                frameworkSQLiteDatabase2.execSQL("CREATE INDEX index_feed_group_subscription_join_subscription_id ON feed_group_subscription_join (subscription_id)");
                frameworkSQLiteDatabase2.execSQL("CREATE TABLE IF NOT EXISTS feed_last_updated (subscription_id INTEGER NOT NULL, last_updated INTEGER, PRIMARY KEY(subscription_id), FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                return unit;
            case 17:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase3 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase3.getClass();
                frameworkSQLiteDatabase3.execSQL("ALTER TABLE streams ADD COLUMN uploader_url TEXT");
                return unit;
            case 18:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase4 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase4.getClass();
                frameworkSQLiteDatabase4.execSQL("ALTER TABLE `subscriptions` ADD COLUMN `notification_mode` INTEGER NOT NULL DEFAULT 0");
                return unit;
            case 19:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase5 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase5.getClass();
                frameworkSQLiteDatabase5.execSQL("ALTER TABLE `playlists` ADD COLUMN `is_thumbnail_permanent` INTEGER NOT NULL DEFAULT 0");
                return unit;
            case 20:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase6 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase6.getClass();
                frameworkSQLiteDatabase6.execSQL("ALTER TABLE `playlists` ADD COLUMN `thumbnail_stream_id` INTEGER NOT NULL DEFAULT -1");
                frameworkSQLiteDatabase6.execSQL("UPDATE playlists SET thumbnail_stream_id = ( SELECT CASE WHEN COUNT(*) != 0 then stream_uid ELSE -1 END FROM ( SELECT p.uid AS playlist_uid, s.uid AS stream_uid FROM playlists p LEFT JOIN playlist_stream_join ps ON p.uid = ps.playlist_id LEFT JOIN streams s ON s.uid = ps.stream_id WHERE s.thumbnail_url = p.thumbnail_url) AS temporary_table WHERE playlist_uid = playlists.uid)");
                frameworkSQLiteDatabase6.execSQL("CREATE TABLE IF NOT EXISTS `playlists_new`(uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, is_thumbnail_permanent INTEGER NOT NULL, thumbnail_stream_id INTEGER NOT NULL)");
                frameworkSQLiteDatabase6.execSQL("INSERT INTO playlists_new SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id  FROM playlists");
                frameworkSQLiteDatabase6.execSQL("DROP TABLE playlists");
                frameworkSQLiteDatabase6.execSQL("ALTER TABLE playlists_new RENAME TO playlists");
                frameworkSQLiteDatabase6.execSQL("CREATE INDEX IF NOT EXISTS `index_playlists_name` ON `playlists` (`name`)");
                return unit;
            case 21:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase7 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase7.getClass();
                frameworkSQLiteDatabase7.execSQL("DELETE FROM search_history WHERE id NOT IN (SELECT id FROM (SELECT MIN(id) as id FROM search_history GROUP BY trim(search), service_id ) tmp)");
                frameworkSQLiteDatabase7.execSQL("UPDATE search_history SET search = trim(search)");
                return unit;
            case 22:
                FrameworkSQLiteDatabase frameworkSQLiteDatabase8 = (FrameworkSQLiteDatabase) obj;
                frameworkSQLiteDatabase8.getClass();
                try {
                    frameworkSQLiteDatabase8.beginTransaction();
                    frameworkSQLiteDatabase8.execSQL("CREATE TABLE `playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `is_thumbnail_permanent` INTEGER NOT NULL, `thumbnail_stream_id` INTEGER NOT NULL, `display_index` INTEGER NOT NULL)");
                    frameworkSQLiteDatabase8.execSQL("INSERT INTO `playlists_tmp` (`uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, `display_index`) SELECT `uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, -1 FROM `playlists`");
                    frameworkSQLiteDatabase8.execSQL("DROP TABLE `playlists`");
                    frameworkSQLiteDatabase8.execSQL("ALTER TABLE `playlists_tmp` RENAME TO `playlists`");
                    frameworkSQLiteDatabase8.execSQL("CREATE TABLE `remote_playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `display_index` INTEGER NOT NULL,`stream_count` INTEGER)");
                    frameworkSQLiteDatabase8.execSQL("INSERT INTO `remote_playlists_tmp` (`uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, `display_index`, `stream_count`)SELECT `uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, -1, `stream_count` FROM `remote_playlists`");
                    frameworkSQLiteDatabase8.execSQL("DROP TABLE `remote_playlists`");
                    frameworkSQLiteDatabase8.execSQL("ALTER TABLE `remote_playlists_tmp` RENAME TO `remote_playlists`");
                    frameworkSQLiteDatabase8.execSQL("CREATE UNIQUE INDEX `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)");
                    frameworkSQLiteDatabase8.setTransactionSuccessful();
                    return unit;
                } finally {
                    frameworkSQLiteDatabase8.endTransaction();
                }
            case 23:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*) FROM feed_last_updated WHERE last_updated IS NULL");
                try {
                    if (prepare.step() && !prepare.isNull(0)) {
                        l = Long.valueOf(prepare.getLong(0));
                        return l;
                    }
                    l = null;
                    return l;
                } finally {
                }
            case 24:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM feed_group ORDER BY sort_order ASC");
                try {
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "icon_id");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "sort_order");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new FeedGroupEntity(prepare.getLong(columnIndexOrThrow), prepare.getText(columnIndexOrThrow2), Path.Companion.feedGroupIconOf((int) prepare.getLong(columnIndexOrThrow3)), prepare.getLong(columnIndexOrThrow4)));
                    }
                    return arrayList;
                } finally {
                }
            case 25:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT IFNULL(MAX(sort_order) + 1, 0) FROM feed_group");
                try {
                    long j = prepare.step() ? prepare.getLong(0) : 0L;
                    prepare.close();
                    return Long.valueOf(j);
                } finally {
                }
            case 26:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("DELETE FROM search_history");
                try {
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection4);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 27:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("SELECT search FROM search_history GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?");
                try {
                    prepare.bindLong(1, 25L);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(prepare.getText(0));
                    }
                    return arrayList2;
                } finally {
                }
            case 28:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT * FROM streams INNER JOIN stream_history ON uid = stream_id ORDER BY access_date DESC");
                try {
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "stream_type");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "duration");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "uploader_url");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "view_count");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "textual_upload_date");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "upload_date");
                    int columnIndexOrThrow17 = DBUtil.getColumnIndexOrThrow(prepare, "is_upload_date_approximation");
                    int columnIndexOrThrow18 = DBUtil.getColumnIndexOrThrow(prepare, "stream_id");
                    int columnIndexOrThrow19 = DBUtil.getColumnIndexOrThrow(prepare, "access_date");
                    int i5 = columnIndexOrThrow17;
                    int columnIndexOrThrow20 = DBUtil.getColumnIndexOrThrow(prepare, "repeat_count");
                    int i6 = columnIndexOrThrow16;
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        long j2 = prepare.getLong(columnIndexOrThrow18);
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(columnIndexOrThrow19) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow19)));
                        if (offsetDateTimeFromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.time.OffsetDateTime', but it was NULL.");
                        }
                        long j3 = prepare.getLong(columnIndexOrThrow20);
                        long j4 = prepare.getLong(columnIndexOrThrow5);
                        int i7 = columnIndexOrThrow20;
                        int i8 = columnIndexOrThrow19;
                        int i9 = (int) prepare.getLong(columnIndexOrThrow6);
                        String text = prepare.getText(columnIndexOrThrow7);
                        String text2 = prepare.getText(columnIndexOrThrow8);
                        StreamType streamTypeOf = Path.Companion.streamTypeOf(prepare.getText(columnIndexOrThrow9));
                        long j5 = prepare.getLong(columnIndexOrThrow10);
                        String text3 = prepare.getText(columnIndexOrThrow11);
                        String text4 = prepare.isNull(columnIndexOrThrow12) ? null : prepare.getText(columnIndexOrThrow12);
                        String text5 = prepare.isNull(columnIndexOrThrow13) ? null : prepare.getText(columnIndexOrThrow13);
                        Long valueOf2 = prepare.isNull(columnIndexOrThrow14) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow14));
                        String text6 = prepare.isNull(columnIndexOrThrow15) ? null : prepare.getText(columnIndexOrThrow15);
                        int i10 = i6;
                        OffsetDateTime offsetDateTimeFromTimestamp2 = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(i10) ? null : Long.valueOf(prepare.getLong(i10)));
                        int i11 = columnIndexOrThrow5;
                        int i12 = i5;
                        if (prepare.isNull(i12)) {
                            i = columnIndexOrThrow6;
                            i2 = i9;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow6;
                            i2 = i9;
                            valueOf = Integer.valueOf((int) prepare.getLong(i12));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        arrayList3.add(new StreamHistoryEntry(new StreamEntity(j4, i2, text, text2, streamTypeOf, j5, text3, text4, text5, valueOf2, text6, offsetDateTimeFromTimestamp2, bool), j2, offsetDateTimeFromTimestamp, j3));
                        columnIndexOrThrow6 = i;
                        i5 = i12;
                        columnIndexOrThrow5 = i11;
                        columnIndexOrThrow20 = i7;
                        i6 = i10;
                        columnIndexOrThrow19 = i8;
                    }
                    return arrayList3;
                } catch (Throwable th) {
                    throw th;
                }
            default:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("DELETE FROM stream_history");
                try {
                    prepare.step();
                    int totalChangedRows2 = DBUtil.getTotalChangedRows(sQLiteConnection7);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
        }
    }

    public /* synthetic */ ZipFilesKt$$ExternalSyntheticLambda3(Object obj, int i) {
        this.$r8$classId = i;
    }
}
