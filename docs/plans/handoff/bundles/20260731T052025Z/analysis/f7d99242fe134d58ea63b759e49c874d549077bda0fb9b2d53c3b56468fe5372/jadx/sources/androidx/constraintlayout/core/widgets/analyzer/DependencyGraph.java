package androidx.constraintlayout.core.widgets.analyzer;

import android.view.Menu;
import android.view.MenuItem;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.widget.ConstraintLayout;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageLoaderHelper$4$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListAdapter;
import com.fsck.k9.ui.messagelist.MessageListItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DependencyGraph implements ActionMode.Callback {
    public Object mContainer;
    public Object mGroups;
    public Object mMeasure;
    public Object mMeasurer;
    public boolean mNeedBuildGraph;
    public boolean mNeedRedoMeasures;
    public Object mRuns;
    public Object mWidgetcontainer;

    public void applyGroup(DependencyNode dependencyNode, int i, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.mRun;
        RunGroup runGroup2 = widgetRun.mRunGroup;
        DependencyNode dependencyNode2 = widgetRun.end;
        DependencyNode dependencyNode3 = widgetRun.start;
        if (runGroup2 == null) {
            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.mWidgetcontainer;
            if (widgetRun == constraintWidgetContainer.mHorizontalRun || widgetRun == constraintWidgetContainer.mVerticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup();
                runGroup.mFirstRun = null;
                runGroup.mRuns = new ArrayList();
                runGroup.mFirstRun = widgetRun;
                arrayList.add(runGroup);
            }
            widgetRun.mRunGroup = runGroup;
            runGroup.mRuns.add(widgetRun);
            Iterator it = dependencyNode3.mDependencies.iterator();
            while (it.hasNext()) {
                Dependency dependency = (Dependency) it.next();
                if (dependency instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency, i, arrayList, runGroup);
                }
            }
            Iterator it2 = dependencyNode2.mDependencies.iterator();
            while (it2.hasNext()) {
                Dependency dependency2 = (Dependency) it2.next();
                if (dependency2 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency2, i, arrayList, runGroup);
                }
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.mDependencies.iterator();
                while (it3.hasNext()) {
                    Dependency dependency3 = (Dependency) it3.next();
                    if (dependency3 instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency3, i, arrayList, runGroup);
                    }
                }
            }
            Iterator it4 = dependencyNode3.mTargets.iterator();
            while (it4.hasNext()) {
                applyGroup((DependencyNode) it4.next(), i, arrayList, runGroup);
            }
            Iterator it5 = dependencyNode2.mTargets.iterator();
            while (it5.hasNext()) {
                applyGroup((DependencyNode) it5.next(), i, arrayList, runGroup);
            }
            if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it6 = ((VerticalWidgetRun) widgetRun).baseline.mTargets.iterator();
                while (it6.hasNext()) {
                    applyGroup((DependencyNode) it6.next(), i, arrayList, runGroup);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x028c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x019d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x000a A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r25) {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.basicMeasureWidgets(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):void");
    }

    public void buildGraph() {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.mWidgetcontainer;
        ArrayList arrayList = (ArrayList) this.mGroups;
        ArrayList arrayList2 = (ArrayList) this.mRuns;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) this.mContainer;
        constraintWidgetContainer2.mHorizontalRun.clear();
        constraintWidgetContainer2.mVerticalRun.clear();
        arrayList2.add(constraintWidgetContainer2.mHorizontalRun);
        arrayList2.add(constraintWidgetContainer2.mVerticalRun);
        Iterator it = constraintWidgetContainer2.mChildren.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (constraintWidget instanceof Guideline) {
                GuidelineReference guidelineReference = new GuidelineReference(constraintWidget);
                constraintWidget.mHorizontalRun.clear();
                constraintWidget.mVerticalRun.clear();
                guidelineReference.orientation = ((Guideline) constraintWidget).mOrientation;
                arrayList2.add(guidelineReference);
            } else {
                if (constraintWidget.isInHorizontalChain()) {
                    if (constraintWidget.horizontalChainRun == null) {
                        constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.horizontalChainRun);
                } else {
                    arrayList2.add(constraintWidget.mHorizontalRun);
                }
                if (constraintWidget.isInVerticalChain()) {
                    if (constraintWidget.verticalChainRun == null) {
                        constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.verticalChainRun);
                } else {
                    arrayList2.add(constraintWidget.mVerticalRun);
                }
                if (constraintWidget instanceof Barrier) {
                    arrayList2.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((WidgetRun) it2.next()).clear();
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it3.next();
            if (widgetRun.mWidget != constraintWidgetContainer2) {
                widgetRun.apply();
            }
        }
        arrayList.clear();
        findGroup(constraintWidgetContainer.mHorizontalRun, 0, arrayList);
        findGroup(constraintWidgetContainer.mVerticalRun, 1, arrayList);
        this.mNeedBuildGraph = false;
    }

    public int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        ArrayList arrayList;
        int i2;
        long max;
        float f;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        ArrayList arrayList2 = (ArrayList) this.mGroups;
        int size = arrayList2.size();
        long j = 0;
        int i3 = 0;
        long j2 = 0;
        while (i3 < size) {
            WidgetRun widgetRun = ((RunGroup) arrayList2.get(i3)).mFirstRun;
            if (!(widgetRun instanceof ChainRun) ? !(i != 0 ? (widgetRun instanceof VerticalWidgetRun) : (widgetRun instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun).orientation != i) {
                DependencyNode dependencyNode = (i == 0 ? constraintWidgetContainer2.mHorizontalRun : constraintWidgetContainer2.mVerticalRun).start;
                DependencyNode dependencyNode2 = (i == 0 ? constraintWidgetContainer2.mHorizontalRun : constraintWidgetContainer2.mVerticalRun).end;
                DependencyNode dependencyNode3 = widgetRun.start;
                DependencyNode dependencyNode4 = widgetRun.end;
                boolean contains = dependencyNode3.mTargets.contains(dependencyNode);
                boolean contains2 = dependencyNode4.mTargets.contains(dependencyNode2);
                long wrapDimension = widgetRun.getWrapDimension();
                if (contains && contains2) {
                    long traverseStart = RunGroup.traverseStart(dependencyNode3, j);
                    arrayList = arrayList2;
                    long traverseEnd = RunGroup.traverseEnd(dependencyNode4, j);
                    long j3 = traverseStart - wrapDimension;
                    int i4 = dependencyNode4.mMargin;
                    i2 = i3;
                    if (j3 >= (-i4)) {
                        j3 += i4;
                    }
                    long j4 = dependencyNode3.mMargin;
                    long j5 = ((-traverseEnd) - wrapDimension) - j4;
                    if (j5 >= j4) {
                        j5 -= j4;
                    }
                    ConstraintWidget constraintWidget = widgetRun.mWidget;
                    if (i == 0) {
                        f = constraintWidget.mHorizontalBiasPercent;
                    } else if (i == 1) {
                        f = constraintWidget.mVerticalBiasPercent;
                    } else {
                        constraintWidget.getClass();
                        f = -1.0f;
                    }
                    float f2 = f > 0.0f ? (long) ((j3 / (1.0f - f)) + (j5 / f)) : 0L;
                    max = (dependencyNode3.mMargin + ((((long) ((f2 * f) + 0.5f)) + wrapDimension) + ((long) CameraDevices$CC.m(1.0f, f, f2, 0.5f)))) - dependencyNode4.mMargin;
                } else {
                    arrayList = arrayList2;
                    i2 = i3;
                    max = contains ? Math.max(RunGroup.traverseStart(dependencyNode3, dependencyNode3.mMargin), dependencyNode3.mMargin + wrapDimension) : contains2 ? Math.max(-RunGroup.traverseEnd(dependencyNode4, dependencyNode4.mMargin), (-dependencyNode4.mMargin) + wrapDimension) : (widgetRun.getWrapDimension() + dependencyNode3.mMargin) - dependencyNode4.mMargin;
                }
            } else {
                arrayList = arrayList2;
                max = j;
                i2 = i3;
            }
            j2 = Math.max(j2, max);
            i3 = i2 + 1;
            arrayList2 = arrayList;
            constraintWidgetContainer2 = constraintWidgetContainer;
            j = 0;
        }
        return (int) j2;
    }

    public void findGroup(WidgetRun widgetRun, int i, ArrayList arrayList) {
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        Iterator it = dependencyNode.mDependencies.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i, arrayList, null);
            }
        }
        Iterator it2 = dependencyNode2.mDependencies.iterator();
        while (it2.hasNext()) {
            Dependency dependency2 = (Dependency) it2.next();
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((VerticalWidgetRun) widgetRun).baseline.mDependencies.iterator();
            while (it3.hasNext()) {
                Dependency dependency3 = (Dependency) it3.next();
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, arrayList, null);
                }
            }
        }
    }

    public void measure(int i, int i2, int i3, int i4, ConstraintWidget constraintWidget) {
        BasicMeasure$Measure basicMeasure$Measure = (BasicMeasure$Measure) this.mMeasure;
        basicMeasure$Measure.horizontalBehavior = i;
        basicMeasure$Measure.verticalBehavior = i3;
        basicMeasure$Measure.horizontalDimension = i2;
        basicMeasure$Measure.verticalDimension = i4;
        ((ConstraintLayout.Measurer) this.mMeasurer).measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.mHasBaseline = basicMeasure$Measure.measuredHasBaseline;
        int i5 = basicMeasure$Measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i5;
        constraintWidget.mHasBaseline = i5 > 0;
    }

    public void measureWidgets() {
        DependencyGraph dependencyGraph;
        BaselineDimensionDependency baselineDimensionDependency;
        Iterator it = ((ConstraintWidgetContainer) this.mWidgetcontainer).mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (!constraintWidget.measured) {
                int[] iArr = constraintWidget.mListDimensionBehaviors;
                boolean z = false;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = constraintWidget.mMatchConstraintDefaultWidth;
                int i4 = constraintWidget.mMatchConstraintDefaultHeight;
                boolean z2 = i == 2 || (i == 3 && i3 == 1);
                if (i2 == 2 || (i2 == 3 && i4 == 1)) {
                    z = true;
                }
                DimensionDependency dimensionDependency = constraintWidget.mHorizontalRun.mDimension;
                boolean z3 = dimensionDependency.resolved;
                DimensionDependency dimensionDependency2 = constraintWidget.mVerticalRun.mDimension;
                boolean z4 = dimensionDependency2.resolved;
                boolean z5 = z2;
                if (z3 && z4) {
                    dependencyGraph = this;
                    dependencyGraph.measure(1, dimensionDependency.value, 1, dimensionDependency2.value, constraintWidget);
                    constraintWidget.measured = true;
                } else if (z3 && z) {
                    dependencyGraph = this;
                    dependencyGraph.measure(1, dimensionDependency.value, 2, dimensionDependency2.value, constraintWidget);
                    VerticalWidgetRun verticalWidgetRun = constraintWidget.mVerticalRun;
                    if (i2 == 3) {
                        verticalWidgetRun.mDimension.wrapValue = constraintWidget.getHeight();
                    } else {
                        verticalWidgetRun.mDimension.resolve(constraintWidget.getHeight());
                        constraintWidget.measured = true;
                    }
                } else {
                    dependencyGraph = this;
                    if (z4 && z5) {
                        dependencyGraph.measure(2, dimensionDependency.value, 1, dimensionDependency2.value, constraintWidget);
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget.mHorizontalRun;
                        if (i == 3) {
                            horizontalWidgetRun.mDimension.wrapValue = constraintWidget.getWidth();
                        } else {
                            horizontalWidgetRun.mDimension.resolve(constraintWidget.getWidth());
                            constraintWidget.measured = true;
                        }
                    }
                }
                if (constraintWidget.measured && (baselineDimensionDependency = constraintWidget.mVerticalRun.mBaselineDimension) != null) {
                    baselineDimensionDependency.resolve(constraintWidget.mBaselineDistance);
                }
                this = dependencyGraph;
            }
        }
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        AccountId accountId;
        LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.mMeasure;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        int i = 1;
        if (itemId == R.id.delete) {
            legacyMessageListFragment.onDelete(LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment));
        } else {
            if (itemId == R.id.mark_as_read) {
                LegacyMessageListFragment.access$setFlagForSelected(legacyMessageListFragment, Flag.SEEN, true);
                return true;
            }
            int i2 = 0;
            if (itemId == R.id.mark_as_unread) {
                LegacyMessageListFragment.access$setFlagForSelected(legacyMessageListFragment, Flag.SEEN, false);
                return true;
            }
            if (itemId == R.id.flag) {
                LegacyMessageListFragment.access$setFlagForSelected(legacyMessageListFragment, Flag.FLAGGED, true);
                return true;
            }
            if (itemId == R.id.unflag) {
                LegacyMessageListFragment.access$setFlagForSelected(legacyMessageListFragment, Flag.FLAGGED, false);
                return true;
            }
            if (itemId == R.id.select_all) {
                legacyMessageListFragment.selectAll$1();
                return true;
            }
            if (itemId == R.id.archive) {
                ArrayList access$getSelectedMessages = LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment);
                if (legacyMessageListFragment.checkCopyOrMovePossible(access$getSelectedMessages, LegacyMessageListFragment.FolderOperation.MOVE)) {
                    if (legacyMessageListFragment.showingThreadedList) {
                        Base64Util base64Util = legacyMessageListFragment.getMessagingController().messagingController.archiveOperations;
                        base64Util.getClass();
                        ((MessagingController) base64Util.alphabet).actOnMessagesGroupedByAccountAndFolder(access$getSelectedMessages, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, new ArchiveOperations$$ExternalSyntheticLambda2(base64Util, "archiveThreads", new ArchiveOperations$$ExternalSyntheticLambda0(base64Util, i), i2)));
                    } else {
                        legacyMessageListFragment.getMessagingController().messagingController.archiveOperations.archiveMessages(access$getSelectedMessages);
                    }
                }
            } else if (itemId == R.id.spam) {
                ArrayList access$getSelectedMessages2 = LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment);
                if (((DefaultGeneralSettingsManager) legacyMessageListFragment.getGeneralSettingsManager$2()).getConfig().interaction.isConfirmSpam) {
                    legacyMessageListFragment.activeMessages = access$getSelectedMessages2;
                    legacyMessageListFragment.showDialog$1(R.id.dialog_confirm_spam);
                } else {
                    legacyMessageListFragment.onSpamConfirmed(access$getSelectedMessages2);
                }
            } else if (itemId == R.id.move) {
                legacyMessageListFragment.onMove(LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment));
            } else if (itemId == R.id.move_to_drafts) {
                ArrayList access$getSelectedMessages3 = LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment);
                LegacyAccount legacyAccount = legacyMessageListFragment.account;
                if (legacyAccount != null && (accountId = legacyAccount.id) != null) {
                    MessagingControllerWrapper messagingController = legacyMessageListFragment.getMessagingController();
                    FolderInfoHolder folderInfoHolder = legacyMessageListFragment.currentFolder;
                    folderInfoHolder.getClass();
                    long j = folderInfoHolder.databaseId;
                    messagingController.getClass();
                    LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
                    MessagingController messagingController2 = messagingController.messagingController;
                    messagingController2.putBackground("moveToDrafts", new MessageLoaderHelper$4$$ExternalSyntheticLambda0(messagingController2, accountDtoOrThrow, j, access$getSelectedMessages3, 3));
                }
                legacyMessageListFragment.activeMessages = null;
            } else {
                if (itemId != R.id.copy) {
                    return false;
                }
                legacyMessageListFragment.onCopy(LegacyMessageListFragment.access$getSelectedMessages(legacyMessageListFragment));
            }
        }
        actionMode.finish();
        return true;
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        menu.getClass();
        actionMode.getMenuInflater().inflate(R.menu.message_list_context_menu, menu);
        setContextCapabilities(((LegacyMessageListFragment) this.mMeasure).account, menu);
        return true;
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        actionMode.getClass();
        LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.mMeasure;
        legacyMessageListFragment.actionMode = null;
        this.mWidgetcontainer = null;
        this.mContainer = null;
        this.mRuns = null;
        this.mGroups = null;
        this.mMeasurer = null;
        MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
        if (messageListAdapter != null) {
            messageListAdapter.setSelected(EmptySet.INSTANCE);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        menu.getClass();
        this.mWidgetcontainer = menu.findItem(R.id.select_all);
        this.mContainer = menu.findItem(R.id.mark_as_read);
        this.mRuns = menu.findItem(R.id.mark_as_unread);
        this.mGroups = menu.findItem(R.id.flag);
        this.mMeasurer = menu.findItem(R.id.unflag);
        LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.mMeasure;
        if (!legacyMessageListFragment.isSingleAccountMode) {
            MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
            if (messageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            ArrayList selectedMessages = messageListAdapter.getSelectedMessages();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = selectedMessages.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(((MessageListItem) it.next()).account.uuid);
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                LegacyAccount account = legacyMessageListFragment.getAccountManager$1().getAccount((String) it2.next());
                if (account != null) {
                    arrayList.add(account);
                }
            }
            ViewSizeResolver.CC.m(menu, R.id.move, true, R.id.copy, true);
            ViewSizeResolver.CC.m(menu, R.id.archive, false, R.id.spam, false);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                setContextCapabilities((LegacyAccount) it3.next(), menu);
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0086, code lost:
    
        if (r0.isSpecialFolder(r9 != null ? r9.archiveFolderId : null) != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContextCapabilities(net.thunderbird.core.android.account.LegacyAccount r10, android.view.Menu r11) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.mMeasure
            com.fsck.k9.ui.messagelist.LegacyMessageListFragment r0 = (com.fsck.k9.ui.messagelist.LegacyMessageListFragment) r0
            boolean r1 = r0.isSingleAccountMode
            r2 = 2131296965(0x7f0902c5, float:1.8211862E38)
            r3 = 2131296604(0x7f09015c, float:1.821113E38)
            r4 = 2131297253(0x7f0903e5, float:1.8212446E38)
            r5 = 2131296385(0x7f090081, float:1.8210685E38)
            r6 = 1
            r7 = 0
            if (r1 == 0) goto La7
            if (r10 != 0) goto L1a
            goto La7
        L1a:
            net.thunderbird.feature.account.AccountId r1 = r10.id
            boolean r8 = r0.isOutbox()
            if (r8 == 0) goto L4d
            r0 = 2131296878(0x7f09026e, float:1.8211685E38)
            r1 = 2131296879(0x7f09026f, float:1.8211687E38)
            coil3.size.ViewSizeResolver.CC.m(r11, r0, r7, r1, r7)
            coil3.size.ViewSizeResolver.CC.m(r11, r5, r7, r3, r7)
            r0 = 2131296753(0x7f0901f1, float:1.8211432E38)
            r1 = 2131297382(0x7f090466, float:1.8212707E38)
            coil3.size.ViewSizeResolver.CC.m(r11, r0, r7, r1, r7)
            coil3.size.ViewSizeResolver.CC.m(r11, r4, r7, r2, r7)
            r9.mNeedBuildGraph = r6
            r9.mNeedRedoMeasures = r6
            java.lang.Long r9 = r10.draftsFolderId
            if (r9 == 0) goto L4c
            r9 = 2131296966(0x7f0902c6, float:1.8211864E38)
            android.view.MenuItem r9 = r11.findItem(r9)
            r9.setVisible(r6)
        L4c:
            return
        L4d:
            com.fsck.k9.controller.MessagingControllerWrapper r9 = r0.getMessagingController()
            boolean r9 = r9.isCopyCapable(r1)
            if (r9 != 0) goto L5e
            android.view.MenuItem r9 = r11.findItem(r3)
            r9.setVisible(r7)
        L5e:
            com.fsck.k9.controller.MessagingControllerWrapper r9 = r0.getMessagingController()
            boolean r9 = r9.isMoveCapable(r1)
            if (r9 != 0) goto L73
            coil3.size.ViewSizeResolver.CC.m(r11, r2, r7, r5, r7)
            android.view.MenuItem r9 = r11.findItem(r4)
            r9.setVisible(r7)
            return
        L73:
            boolean r9 = r10.hasArchiveFolder()
            r1 = 0
            if (r9 == 0) goto L88
            net.thunderbird.core.android.account.LegacyAccount r9 = r0.account
            if (r9 == 0) goto L81
            java.lang.Long r9 = r9.archiveFolderId
            goto L82
        L81:
            r9 = r1
        L82:
            boolean r9 = r0.isSpecialFolder(r9)
            if (r9 == 0) goto L8f
        L88:
            android.view.MenuItem r9 = r11.findItem(r5)
            r9.setVisible(r7)
        L8f:
            java.lang.Long r9 = r10.spamFolderId
            if (r9 == 0) goto L9f
            net.thunderbird.core.android.account.LegacyAccount r9 = r0.account
            if (r9 == 0) goto L99
            java.lang.Long r1 = r9.spamFolderId
        L99:
            boolean r9 = r0.isSpecialFolder(r1)
            if (r9 == 0) goto Lc6
        L9f:
            android.view.MenuItem r9 = r11.findItem(r4)
            r9.setVisible(r7)
            return
        La7:
            coil3.size.ViewSizeResolver.CC.m(r11, r2, r7, r3, r7)
            if (r10 == 0) goto Lb9
            boolean r9 = r10.hasArchiveFolder()
            if (r9 != r6) goto Lb9
            android.view.MenuItem r9 = r11.findItem(r5)
            r9.setVisible(r6)
        Lb9:
            if (r10 == 0) goto Lc6
            java.lang.Long r9 = r10.spamFolderId
            if (r9 == 0) goto Lc6
            android.view.MenuItem r9 = r11.findItem(r4)
            r9.setVisible(r6)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.setContextCapabilities(net.thunderbird.core.android.account.LegacyAccount, android.view.Menu):void");
    }
}
