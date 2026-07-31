package okio;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.view.ActionMode;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.preference.PreferenceManager;
import androidx.room.InvalidationTracker;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TransactionExecutor;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.TriggerBasedInvalidationTracker$createFlow$1;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.impl.CleanupCallback;
import androidx.work.impl.Migration_1_2;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImplExtKt$WorkManagerImpl$1;
import androidx.work.impl.WorkMigration9To10;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.utils.PackageManagerHelper;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.util.Log;
import com.grack.nanojson.JsonBuilder;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.RandomAccess;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Pair;
import kotlin.collections.AbstractList;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.math.MathKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.internal.ScopeCoroutine;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.SparseItemUtil$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Options extends AbstractList implements RandomAccess {
    public final ByteString[] byteStrings;
    public final int[] trie;

    public Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return super.contains((ByteString) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.byteStrings[i];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.byteStrings.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Companion {
        public Companion() {
            new ConcurrentHashMap();
        }

        public static long add(AtomicLong atomicLong, long j) {
            long j2;
            do {
                j2 = atomicLong.get();
                if (j2 == Long.MAX_VALUE) {
                    return Long.MAX_VALUE;
                }
            } while (!atomicLong.compareAndSet(j2, addCap(j2, j)));
            return j2;
        }

        public static long addCap(long j, long j2) {
            long j3 = j + j2;
            if (j3 < 0) {
                return Long.MAX_VALUE;
            }
            return j3;
        }

        public static void buildTrieRecursive(long j, Buffer buffer, int i, ArrayList arrayList, int i2, int i3, ArrayList arrayList2) {
            int i4;
            int i5;
            ArrayList arrayList3;
            long j2;
            int i6;
            int i7 = i;
            ArrayList arrayList4 = arrayList;
            ArrayList arrayList5 = arrayList2;
            if (i2 >= i3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return;
            }
            for (int i8 = i2; i8 < i3; i8++) {
                if (((ByteString) arrayList4.get(i8)).getSize$okio() < i7) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                    return;
                }
            }
            ByteString byteString = (ByteString) arrayList.get(i2);
            ByteString byteString2 = (ByteString) arrayList4.get(i3 - 1);
            if (i7 == byteString.getSize$okio()) {
                int intValue = ((Number) arrayList5.get(i2)).intValue();
                int i9 = i2 + 1;
                ByteString byteString3 = (ByteString) arrayList4.get(i9);
                i4 = i9;
                i5 = intValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.internalGet$okio(i7) == byteString2.internalGet$okio(i7)) {
                int min = Math.min(byteString.getSize$okio(), byteString2.getSize$okio());
                int i10 = 0;
                for (int i11 = i7; i11 < min && byteString.internalGet$okio(i11) == byteString2.internalGet$okio(i11); i11++) {
                    i10++;
                }
                long j3 = (buffer.size / 4) + j + 2 + i10 + 1;
                buffer.m715writeInt(-i10);
                buffer.m715writeInt(i5);
                int i12 = i7 + i10;
                while (i7 < i12) {
                    buffer.m715writeInt(byteString.internalGet$okio(i7) & 255);
                    i7++;
                }
                if (i4 + 1 == i3) {
                    if (i12 == ((ByteString) arrayList4.get(i4)).getSize$okio()) {
                        buffer.m715writeInt(((Number) arrayList5.get(i4)).intValue());
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
                        return;
                    }
                }
                Buffer buffer2 = new Buffer();
                buffer.m715writeInt(((int) ((buffer2.size / 4) + j3)) * (-1));
                buildTrieRecursive(j3, buffer2, i12, arrayList4, i4, i3, arrayList5);
                buffer.writeAll(buffer2);
                return;
            }
            int i13 = 1;
            for (int i14 = i4 + 1; i14 < i3; i14++) {
                if (((ByteString) arrayList4.get(i14 - 1)).internalGet$okio(i7) != ((ByteString) arrayList4.get(i14)).internalGet$okio(i7)) {
                    i13++;
                }
            }
            long j4 = (buffer.size / 4) + j + 2 + (i13 * 2);
            buffer.m715writeInt(i13);
            buffer.m715writeInt(i5);
            for (int i15 = i4; i15 < i3; i15++) {
                int internalGet$okio = ((ByteString) arrayList4.get(i15)).internalGet$okio(i7);
                if (i15 == i4 || internalGet$okio != ((ByteString) arrayList4.get(i15 - 1)).internalGet$okio(i7)) {
                    buffer.m715writeInt(internalGet$okio & 255);
                }
            }
            Buffer buffer3 = new Buffer();
            int i16 = i4;
            while (i16 < i3) {
                byte internalGet$okio2 = ((ByteString) arrayList4.get(i16)).internalGet$okio(i7);
                int i17 = i16 + 1;
                int i18 = i17;
                while (true) {
                    if (i18 >= i3) {
                        i18 = i3;
                        break;
                    } else if (internalGet$okio2 != ((ByteString) arrayList4.get(i18)).internalGet$okio(i7)) {
                        break;
                    } else {
                        i18++;
                    }
                }
                if (i17 == i18 && i7 + 1 == ((ByteString) arrayList4.get(i16)).getSize$okio()) {
                    buffer.m715writeInt(((Number) arrayList5.get(i16)).intValue());
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                } else {
                    buffer.m715writeInt(((int) ((buffer3.size / 4) + j4)) * (-1));
                    arrayList3 = arrayList5;
                    j2 = j4;
                    i6 = i18;
                    buildTrieRecursive(j2, buffer3, i7 + 1, arrayList, i16, i6, arrayList3);
                    arrayList4 = arrayList;
                }
                j4 = j2;
                i16 = i6;
                arrayList5 = arrayList3;
            }
            buffer.writeAll(buffer3);
        }

        public static final FlowUtil$createFlow$$inlined$map$1 createFlow(RoomDatabase roomDatabase, boolean z, String[] strArr, Function1 function1) {
            Pair pair;
            roomDatabase.getClass();
            InvalidationTracker invalidationTracker = roomDatabase.getInvalidationTracker();
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTracker.implementation;
            triggerBasedInvalidationTracker.getClass();
            SetBuilder setBuilder = new SetBuilder();
            int i = 0;
            for (String str : strArr2) {
                LinkedHashMap linkedHashMap = triggerBasedInvalidationTracker.viewTables;
                String lowerCase = str.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                Set set = (Set) linkedHashMap.get(lowerCase);
                if (set != null) {
                    setBuilder.addAll(set);
                } else {
                    setBuilder.add(str);
                }
            }
            String[] strArr3 = (String[]) setBuilder.build().toArray(new String[0]);
            int length = strArr3.length;
            int[] iArr = new int[length];
            while (true) {
                if (i >= length) {
                    pair = new Pair(strArr3, iArr);
                    break;
                }
                String str2 = strArr3[i];
                LinkedHashMap linkedHashMap2 = triggerBasedInvalidationTracker.tableIdLookup;
                String lowerCase2 = str2.toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                Integer num = (Integer) linkedHashMap2.get(lowerCase2);
                if (num == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("There is no table with name ".concat(str2));
                    pair = null;
                    break;
                }
                iArr[i] = num.intValue();
                i++;
            }
            String[] strArr4 = (String[]) pair.component1();
            int[] iArr2 = (int[]) pair.component2();
            strArr4.getClass();
            iArr2.getClass();
            return new FlowUtil$createFlow$$inlined$map$1(FlowKt.buffer$default(new SafeFlow(new TriggerBasedInvalidationTracker$createFlow$1(triggerBasedInvalidationTracker, iArr2, true, strArr4, null)), -1), roomDatabase, z, function1);
        }

        public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration) {
            RoomDatabase.Builder databaseBuilder;
            context.getClass();
            Dispatcher dispatcher = new Dispatcher(configuration.taskExecutor);
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            TransactionExecutor transactionExecutor = (TransactionExecutor) dispatcher.executorServiceOrNull;
            transactionExecutor.getClass();
            SystemClock systemClock = configuration.clock;
            boolean z = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
            systemClock.getClass();
            int i = 2;
            if (z) {
                databaseBuilder = new RoomDatabase.Builder(applicationContext, WorkDatabase.class, null);
                databaseBuilder.allowMainThreadQueries = true;
            } else {
                databaseBuilder = Room.databaseBuilder(applicationContext, WorkDatabase.class, "androidx.work.workdb");
                databaseBuilder.supportOpenHelperFactory = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(applicationContext, i);
            }
            databaseBuilder.queryExecutor = transactionExecutor;
            databaseBuilder.callbacks.add(new CleanupCallback(systemClock));
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE);
            databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 2, 3));
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$5);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$6);
            databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 5, 6));
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$7);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$8);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$9);
            databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext));
            databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 10, 11));
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$1);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$2);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$3);
            databaseBuilder.addMigrations(Migration_1_2.INSTANCE$4);
            databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 21, 22));
            databaseBuilder.requireMigration = false;
            databaseBuilder.allowDestructiveMigrationOnDowngrade = true;
            databaseBuilder.allowDestructiveMigrationForAllTables = true;
            WorkDatabase workDatabase = (WorkDatabase) databaseBuilder.build();
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            ComponentRegistry.Builder builder = new ComponentRegistry.Builder(applicationContext2, dispatcher);
            Processor processor = new Processor(context.getApplicationContext(), configuration, dispatcher, workDatabase);
            int i2 = WorkManagerImplExtKt$WorkManagerImpl$1.$r8$clinit;
            String str = Schedulers.TAG;
            SystemJobScheduler systemJobScheduler = new SystemJobScheduler(context, workDatabase, configuration);
            PackageManagerHelper.setComponentEnabled(context, SystemJobService.class, true);
            Logger$LogcatLogger.get().debug(Schedulers.TAG, "Created SystemJobScheduler and enabled SystemJobService");
            return new WorkManagerImpl(context.getApplicationContext(), configuration, dispatcher, workDatabase, Jsoup.listOf((Object[]) new Scheduler[]{systemJobScheduler, new GreedyScheduler(context, configuration, builder, processor, new JsonBuilder(processor, dispatcher), dispatcher)}), processor, builder);
        }

        public static final long currentAbsoluteScrollOffset(PagerState pagerState) {
            return MathKt.roundToLong(pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSizeWithSpacing$foundation()) + (pagerState.getCurrentPage() * pagerState.getPageSizeWithSpacing$foundation());
        }

        public static final FocusTargetNode findActiveFocusNode(FocusTargetNode focusTargetNode) {
            FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode();
            if (activeFocusTargetNode == null || !activeFocusTargetNode.isAttached) {
                return null;
            }
            return activeFocusTargetNode;
        }

        public static FontsContractCompat$FontInfo findBestInfo(FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
            int i2 = (i & 1) == 0 ? 400 : 700;
            boolean z = (i & 2) != 0;
            FontsContractCompat$FontInfo fontsContractCompat$FontInfo = null;
            int i3 = Log.LOG_LEVEL_OFF;
            for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo2 : fontsContractCompat$FontInfoArr) {
                int abs = (Math.abs(fontsContractCompat$FontInfo2.mWeight - i2) * 2) + (fontsContractCompat$FontInfo2.mItalic == z ? 0 : 1);
                if (fontsContractCompat$FontInfo == null || i3 > abs) {
                    fontsContractCompat$FontInfo = fontsContractCompat$FontInfo2;
                    i3 = abs;
                }
            }
            return fontsContractCompat$FontInfo;
        }

        public static View findChildViewById(int i, View view) {
            if (!(view instanceof ViewGroup)) {
                return null;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View findViewById = viewGroup.getChildAt(i2).findViewById(i);
                if (findViewById != null) {
                    return findViewById;
                }
            }
            return null;
        }

        public static final Rect focusRect(FocusTargetNode focusTargetNode) {
            NodeCoordinator nodeCoordinator;
            if (focusTargetNode.isAttached && (nodeCoordinator = focusTargetNode.coordinator) != null) {
                LayoutCoordinates findRootCoordinates = RulerKt.findRootCoordinates(nodeCoordinator);
                if (!findRootCoordinates.isAttached()) {
                    findRootCoordinates = null;
                }
                if (findRootCoordinates != null) {
                    return focusTargetNode.fetchFocusRect$ui(findRootCoordinates);
                }
            }
            return Rect.Zero;
        }

        /* JADX WARN: Code restructure failed: missing block: B:72:0x0027, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final androidx.compose.ui.focus.FocusTargetNode getActiveChild(androidx.compose.ui.focus.FocusTargetNode r8) {
            /*
                androidx.compose.ui.Modifier$Node r0 = r8.node
                boolean r0 = r0.isAttached
                r1 = 0
                if (r0 != 0) goto L9
                goto Lab
            L9:
                if (r0 != 0) goto L11
                java.lang.String r0 = "visitChildren called on an unattached node"
                androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r0)
            L11:
                androidx.compose.runtime.collection.MutableVector r0 = new androidx.compose.runtime.collection.MutableVector
                r2 = 16
                androidx.compose.ui.Modifier$Node[] r3 = new androidx.compose.ui.Modifier.Node[r2]
                r0.<init>(r3)
                androidx.compose.ui.Modifier$Node r8 = r8.node
                androidx.compose.ui.Modifier$Node r3 = r8.child
                if (r3 != 0) goto L24
                androidx.compose.ui.node.HitTestResultKt.access$addLayoutNodeChildren(r0, r8)
                goto L27
            L24:
                r0.add(r3)
            L27:
                int r8 = r0.size
                if (r8 == 0) goto Lab
                int r8 = r8 + (-1)
                java.lang.Object r8 = r0.removeAt(r8)
                androidx.compose.ui.Modifier$Node r8 = (androidx.compose.ui.Modifier.Node) r8
                int r3 = r8.aggregateChildKindSet
                r3 = r3 & 1024(0x400, float:1.435E-42)
                if (r3 != 0) goto L3d
                androidx.compose.ui.node.HitTestResultKt.access$addLayoutNodeChildren(r0, r8)
                goto L27
            L3d:
                if (r8 == 0) goto L27
                int r3 = r8.kindSet
                r3 = r3 & 1024(0x400, float:1.435E-42)
                if (r3 == 0) goto La8
                r3 = r1
            L46:
                if (r8 == 0) goto L27
                boolean r4 = r8 instanceof androidx.compose.ui.focus.FocusTargetNode
                r5 = 1
                if (r4 == 0) goto L6d
                androidx.compose.ui.focus.FocusTargetNode r8 = (androidx.compose.ui.focus.FocusTargetNode) r8
                androidx.compose.ui.Modifier$Node r4 = r8.node
                boolean r4 = r4.isAttached
                if (r4 == 0) goto La3
                androidx.compose.ui.focus.FocusStateImpl r4 = r8.getFocusState()
                int r4 = r4.ordinal()
                if (r4 == 0) goto L6c
                if (r4 == r5) goto L6c
                r5 = 2
                if (r4 == r5) goto L6c
                r8 = 3
                if (r4 != r8) goto L68
                goto La3
            L68:
                coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
                return r1
            L6c:
                return r8
            L6d:
                int r4 = r8.kindSet
                r4 = r4 & 1024(0x400, float:1.435E-42)
                if (r4 == 0) goto La3
                boolean r4 = r8 instanceof androidx.compose.ui.node.DelegatingNode
                if (r4 == 0) goto La3
                r4 = r8
                androidx.compose.ui.node.DelegatingNode r4 = (androidx.compose.ui.node.DelegatingNode) r4
                androidx.compose.ui.Modifier$Node r4 = r4.delegate
                r6 = 0
            L7d:
                if (r4 == 0) goto La0
                int r7 = r4.kindSet
                r7 = r7 & 1024(0x400, float:1.435E-42)
                if (r7 == 0) goto L9d
                int r6 = r6 + 1
                if (r6 != r5) goto L8b
                r8 = r4
                goto L9d
            L8b:
                if (r3 != 0) goto L94
                androidx.compose.runtime.collection.MutableVector r3 = new androidx.compose.runtime.collection.MutableVector
                androidx.compose.ui.Modifier$Node[] r7 = new androidx.compose.ui.Modifier.Node[r2]
                r3.<init>(r7)
            L94:
                if (r8 == 0) goto L9a
                r3.add(r8)
                r8 = r1
            L9a:
                r3.add(r4)
            L9d:
                androidx.compose.ui.Modifier$Node r4 = r4.child
                goto L7d
            La0:
                if (r6 != r5) goto La3
                goto L46
            La3:
                androidx.compose.ui.Modifier$Node r8 = androidx.compose.ui.node.HitTestResultKt.access$pop(r3)
                goto L46
            La8:
                androidx.compose.ui.Modifier$Node r8 = r8.child
                goto L3d
            Lab:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.getActiveChild(androidx.compose.ui.focus.FocusTargetNode):androidx.compose.ui.focus.FocusTargetNode");
        }

        public static ItemViewMode getItemViewMode(Context context) {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(context.getString(R.string.list_view_mode_key), context.getString(R.string.list_view_mode_value));
            boolean equals = string.equals(context.getString(R.string.list_view_mode_list_key));
            ItemViewMode itemViewMode = ItemViewMode.LIST;
            if (equals) {
                return itemViewMode;
            }
            boolean equals2 = string.equals(context.getString(R.string.list_view_mode_grid_key));
            ItemViewMode itemViewMode2 = ItemViewMode.GRID;
            if (equals2) {
                return itemViewMode2;
            }
            if (string.equals(context.getString(R.string.list_view_mode_card_key))) {
                return ItemViewMode.CARD;
            }
            android.content.res.Configuration configuration = context.getResources().getConfiguration();
            return (configuration.orientation == 2 && configuration.isLayoutSizeAtLeast(3)) ? itemViewMode2 : itemViewMode;
        }

        public static final int getProgressionLastElement(int i, int i2, int i3) {
            if (i3 > 0) {
                if (i < i2) {
                    int i4 = i2 % i3;
                    if (i4 < 0) {
                        i4 += i3;
                    }
                    int i5 = i % i3;
                    if (i5 < 0) {
                        i5 += i3;
                    }
                    int i6 = (i4 - i5) % i3;
                    if (i6 < 0) {
                        i6 += i3;
                    }
                    return i2 - i6;
                }
            } else {
                if (i3 >= 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Step is zero.");
                    return 0;
                }
                if (i > i2) {
                    int i7 = -i3;
                    int i8 = i % i7;
                    if (i8 < 0) {
                        i8 += i7;
                    }
                    int i9 = i2 % i7;
                    if (i9 < 0) {
                        i9 += i7;
                    }
                    int i10 = (i8 - i9) % i7;
                    if (i10 < 0) {
                        i10 += i7;
                    }
                    return i10 + i2;
                }
            }
            return i2;
        }

        public static String getSelectedThemeKey(Context context) {
            return context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getString(context.getString(R.string.theme_key), context.getString(R.string.default_theme_value));
        }

        public static boolean isDeviceDarkThemeEnabled(Context context) {
            return (context.getResources().getConfiguration().uiMode & 48) == 32;
        }

        public static final boolean isEligibleForFocusSearch(FocusTargetNode focusTargetNode) {
            LayoutNode layoutNode;
            NodeCoordinator nodeCoordinator;
            LayoutNode layoutNode2;
            NodeCoordinator nodeCoordinator2 = focusTargetNode.coordinator;
            return (nodeCoordinator2 == null || (layoutNode = nodeCoordinator2.layoutNode) == null || !layoutNode.isPlaced() || (nodeCoordinator = focusTargetNode.coordinator) == null || (layoutNode2 = nodeCoordinator.layoutNode) == null || !layoutNode2.isAttached()) ? false : true;
        }

        public static boolean isLightThemeSelected(Context context) {
            String selectedThemeKey = getSelectedThemeKey(context);
            Resources resources = context.getResources();
            if (selectedThemeKey.equals(resources.getString(R.string.light_theme_key))) {
                return true;
            }
            return selectedThemeKey.equals(resources.getString(R.string.auto_device_theme_key)) && !isDeviceDarkThemeEnabled(context);
        }

        public static String lenientFormat(String str, Object... objArr) {
            int indexOf;
            String sb;
            int i = 0;
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj == null) {
                    sb = "null";
                } else {
                    try {
                        sb = obj.toString();
                    } catch (Exception e) {
                        String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                        Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for ".concat(str2), (Throwable) e);
                        StringBuilder m180m = Modifier.CC.m180m("<", str2, " threw ");
                        m180m.append(e.getClass().getName());
                        m180m.append(">");
                        sb = m180m.toString();
                    }
                }
                objArr[i2] = sb;
            }
            StringBuilder sb2 = new StringBuilder((objArr.length * 16) + str.length());
            int i3 = 0;
            while (i < objArr.length && (indexOf = str.indexOf("%s", i3)) != -1) {
                sb2.append((CharSequence) str, i3, indexOf);
                sb2.append(objArr[i]);
                i3 = indexOf + 2;
                i++;
            }
            sb2.append((CharSequence) str, i3, str.length());
            if (i < objArr.length) {
                sb2.append(" [");
                sb2.append(objArr[i]);
                for (int i4 = i + 1; i4 < objArr.length; i4++) {
                    sb2.append(", ");
                    sb2.append(objArr[i4]);
                }
                sb2.append(']');
            }
            return sb2.toString();
        }

        public static long multiplyCap(long j, long j2) {
            long j3 = j * j2;
            if (((j | j2) >>> 31) == 0 || j3 / j == j2) {
                return j3;
            }
            return Long.MAX_VALUE;
        }

        public static void openPopupMenu(final PlayQueue playQueue, final PlayQueueItem playQueueItem, View view, boolean z, final FragmentManagerImpl fragmentManagerImpl, final Context context) {
            PopupMenu popupMenu = new PopupMenu(new ContextThemeWrapper(context, R.style.DarkPopupMenu), view);
            popupMenu.inflate(R.menu.menu_play_queue_item);
            if (z) {
                popupMenu.getMenu().findItem(R.id.menu_item_details).setVisible(false);
            }
            popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: org.schabi.newpipe.QueueItemMenuUtil$$ExternalSyntheticLambda0
                @Override // android.widget.PopupMenu.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    int itemId = menuItem.getItemId();
                    PlayQueueItem playQueueItem2 = playQueueItem;
                    if (itemId == R.id.menu_item_remove) {
                        PlayQueue playQueue2 = PlayQueue.this;
                        playQueue2.remove(playQueue2.indexOf(playQueueItem2));
                        return true;
                    }
                    Context context2 = context;
                    int i = 0;
                    if (itemId == R.id.menu_item_details) {
                        int serviceId = playQueueItem2.getServiceId();
                        context2.startActivity(SQLite.getOpenIntent(context2, playQueueItem2.getUrl(), serviceId, StreamingService.LinkType.STREAM).setFlags(268435456).putExtra("key_title", playQueueItem2.getTitle()).putExtra("switching_players", false));
                        return true;
                    }
                    FragmentManager fragmentManager = fragmentManagerImpl;
                    if (itemId == R.id.menu_item_append_playlist) {
                        Object[] objArr = {new StreamEntity(playQueueItem2)};
                        ArrayList arrayList = new ArrayList(1);
                        Object obj = objArr[0];
                        PlaylistDialog.createCorrespondingDialog(context2, Owner.CC.m(obj, arrayList, obj, arrayList), new QueueItemMenuUtil$$ExternalSyntheticLambda1(fragmentManager, i));
                        return true;
                    }
                    if (itemId != R.id.menu_item_channel_details) {
                        if (itemId == R.id.menu_item_share) {
                            Transition.Impl26.shareText(context2, playQueueItem2.getTitle(), playQueueItem2.getUrl(), playQueueItem2.getThumbnails());
                            return true;
                        }
                        if (itemId != R.id.menu_item_download) {
                            return false;
                        }
                        UStringsKt.fetchStreamInfoAndSaveToDatabase(context2, playQueueItem2.getServiceId(), playQueueItem2.getUrl(), new DownloaderImpl$$ExternalSyntheticLambda3(context2, fragmentManager, 2));
                        return true;
                    }
                    int serviceId2 = playQueueItem2.getServiceId();
                    String url = playQueueItem2.getUrl();
                    String uploaderUrl = playQueueItem2.getUploaderUrl();
                    DownloaderImpl$$ExternalSyntheticLambda3 downloaderImpl$$ExternalSyntheticLambda3 = new DownloaderImpl$$ExternalSyntheticLambda3(context2, playQueueItem2, 1);
                    if (Utils.isNullOrEmpty(uploaderUrl)) {
                        UStringsKt.fetchStreamInfoAndSaveToDatabase(context2, serviceId2, url, new SparseItemUtil$$ExternalSyntheticLambda0(downloaderImpl$$ExternalSyntheticLambda3, 0));
                        return true;
                    }
                    downloaderImpl$$ExternalSyntheticLambda3.s(uploaderUrl);
                    return true;
                }
            });
            popupMenu.show();
        }

        public static void playTogether(AnimatorSet animatorSet, ArrayList arrayList) {
            int size = arrayList.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                Animator animator = (Animator) arrayList.get(i);
                j = Math.max(j, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
            ofInt.setDuration(j);
            arrayList.add(0, ofInt);
            animatorSet.playTogether(arrayList);
        }

        /* renamed from: plus-Nv-tHpc, reason: not valid java name */
        public static final long m727plusNvtHpc(long j, long j2) {
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + ((int) (j2 >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) + ((int) (j2 & 4294967295L));
            return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        }

        public static void produced(AtomicLong atomicLong, long j) {
            long j2;
            long j3;
            do {
                j2 = atomicLong.get();
                if (j2 == Long.MAX_VALUE) {
                    return;
                }
                j3 = j2 - j;
                if (j3 < 0) {
                    MathKt.onError(new IllegalStateException(Modifier.CC.m("More produced than requested: ", j3)));
                    j3 = 0;
                }
            } while (!atomicLong.compareAndSet(j2, j3));
        }

        public static int resolveColorFromAttr(Context context, int i) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            int i2 = typedValue.resourceId;
            return i2 != 0 ? context.getColor(i2) : typedValue.data;
        }

        public static Drawable resolveDrawable(Context context, int i) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            return Cookie.Companion.getDrawable(context, typedValue.resourceId);
        }

        /* renamed from: round-k-4lQ0M, reason: not valid java name */
        public static final long m728roundk4lQ0M(long j) {
            return (Math.round(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (Math.round(Float.intBitsToFloat((int) (j >> 32))) << 32);
        }

        public static void saveDefaultDirectory(Context context, int i, String str) {
            if (useStorageAccessFramework(context)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            String string = context.getString(i);
            if (Utils.isNullOrEmpty(defaultSharedPreferences.getString(string, null))) {
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.putString(string, new File(new File(Environment.getExternalStorageDirectory(), str), "NewPipe").toURI().toString());
                edit.apply();
            }
        }

        public static void setDayNightMode(Context context, String str) {
            Resources resources = context.getResources();
            if (str.equals(resources.getString(R.string.light_theme_key))) {
                AppCompatDelegate.setDefaultNightMode(1);
            } else if (str.equals(resources.getString(R.string.dark_theme_key)) || str.equals(resources.getString(R.string.black_theme_key))) {
                AppCompatDelegate.setDefaultNightMode(2);
            } else {
                AppCompatDelegate.setDefaultNightMode(-1);
            }
        }

        public static void setMediaTunneling(Context context) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
            if (DeviceUtils.HI3798MV200 || DeviceUtils.CVT_MT5886_EU_1G || DeviceUtils.REALTEKATV || DeviceUtils.QM16XE_U || DeviceUtils.BRAVIA_VH1 || DeviceUtils.BRAVIA_VH2 || DeviceUtils.BRAVIA_ATV2 || DeviceUtils.BRAVIA_ATV3_4K || DeviceUtils.PH7M_EU_5596 || DeviceUtils.TX_50JXW834 || DeviceUtils.HMB9213NW) {
                sharedPreferences.edit().putBoolean(context.getString(R.string.disable_media_tunneling_key), true).putInt(context.getString(R.string.disabled_media_tunneling_automatically_key), 1).putInt(context.getString(R.string.media_tunneling_device_blacklist_version), 994).apply();
            } else {
                sharedPreferences.edit().putInt(context.getString(R.string.media_tunneling_device_blacklist_version), 994).apply();
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0149, code lost:
        
            if (r9.equals("LightTheme.YouTube") == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0065, code lost:
        
            if (r8.getSharedPreferences(androidx.preference.PreferenceManager.getDefaultSharedPreferencesName(r8), 0).getString(r8.getString(org.schabi.newpipe.R.string.night_theme_key), r8.getResources().getString(org.schabi.newpipe.R.string.default_night_theme_value)).equals(r2) != false) goto L7;
         */
        /* JADX WARN: Removed duplicated region for block: B:9:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void setTheme(android.content.ContextWrapper r8, int r9) {
            /*
                Method dump skipped, instructions count: 500
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.setTheme(android.content.ContextWrapper, int):void");
        }

        public static void setTitleToAppCompatActivity(FragmentActivity fragmentActivity, CharSequence charSequence) {
            Companion supportActionBar;
            if (!(fragmentActivity instanceof AppCompatActivity) || (supportActionBar = ((AppCompatActivity) fragmentActivity).getSupportActionBar()) == null) {
                return;
            }
            supportActionBar.setTitle(charSequence);
        }

        public static final Object startUndispatched(ScopeCoroutine scopeCoroutine, boolean z, ScopeCoroutine scopeCoroutine2, Function2 function2) {
            Object completedExceptionally;
            Object makeCompletingOnce$kotlinx_coroutines_core;
            try {
                if (function2 instanceof BaseContinuationImpl) {
                    TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
                    completedExceptionally = function2.invoke(scopeCoroutine2, scopeCoroutine);
                } else {
                    completedExceptionally = UStringsKt.wrapWithContinuationImpl(function2, scopeCoroutine2, scopeCoroutine);
                }
            } catch (DispatchException e) {
                scopeCoroutine.makeCompleting$kotlinx_coroutines_core(new CompletedExceptionally(e.getCause(), false));
                throw e.getCause();
            } catch (Throwable th) {
                completedExceptionally = new CompletedExceptionally(th, false);
            }
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (completedExceptionally == coroutineSingletons || (makeCompletingOnce$kotlinx_coroutines_core = scopeCoroutine.makeCompletingOnce$kotlinx_coroutines_core(completedExceptionally)) == JobKt.COMPLETING_WAITING_CHILDREN) {
                return coroutineSingletons;
            }
            scopeCoroutine.afterCompletionUndispatched();
            if (!(makeCompletingOnce$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                return JobKt.unboxState(makeCompletingOnce$kotlinx_coroutines_core);
            }
            if (!z) {
                Throwable th2 = ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
                if ((th2 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th2).coroutine == scopeCoroutine) {
                    if (completedExceptionally instanceof CompletedExceptionally) {
                        throw ((CompletedExceptionally) completedExceptionally).cause;
                    }
                    return completedExceptionally;
                }
            }
            throw ((CompletedExceptionally) makeCompletingOnce$kotlinx_coroutines_core).cause;
        }

        public static int toActivityTransitResId(Context context, int i) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(android.R.style.Animation.Activity, new int[]{i});
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            return resourceId;
        }

        public static boolean useStorageAccessFramework(Context context) {
            if (Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            if (DeviceUtils.isFireTv()) {
                return false;
            }
            return context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0).getBoolean(context.getString(R.string.storage_use_saf), true);
        }

        public boolean closeOptionsMenu() {
            return false;
        }

        public abstract boolean collapseActionView();

        public abstract Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i);

        public abstract Typeface createFromFontInfo(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i);

        public Typeface createFromFontInfoWithFallback(Context context, List list, int i) {
            throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
        }

        public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
            File tempFile = CloseableKt.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (CloseableKt.copyToFile(tempFile, resources, i)) {
                    return Typeface.createFromFile(tempFile.getPath());
                }
                return null;
            } catch (RuntimeException unused) {
                return null;
            } finally {
                tempFile.delete();
            }
        }

        public abstract void dispatchMenuVisibilityChanged(boolean z);

        public abstract int getDisplayOptions();

        public abstract CharSequence getSubtitle();

        public abstract Context getThemedContext();

        public boolean invalidateOptionsMenu() {
            return false;
        }

        public abstract void onConfigurationChanged();

        public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

        public boolean onMenuKeyEvent(KeyEvent keyEvent) {
            return false;
        }

        public boolean openOptionsMenu() {
            return false;
        }

        public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z);

        public abstract void setDisplayHomeAsUpEnabled(boolean z);

        public abstract void setDisplayShowTitleEnabled(boolean z);

        public abstract void setShowHideAnimationEnabled(boolean z);

        public abstract void setSubtitle();

        public abstract void setSubtitle(CharSequence charSequence);

        public abstract void setTitle(int i);

        public abstract void setTitle(CharSequence charSequence);

        public abstract void setWindowTitle(CharSequence charSequence);

        public ActionMode startActionMode(CardView.AnonymousClass1 anonymousClass1) {
            return null;
        }

        public void onDestroy() {
        }
    }
}
