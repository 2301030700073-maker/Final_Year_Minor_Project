package androidx.appcompat.widget;

import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.view.menu.CascadingMenuPopup$3$1;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.collection.LongSparseArray;
import androidx.collection.MutableLongList;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.FloatSpringSpec;
import androidx.compose.animation.core.VectorizedAnimationSpecKt;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.DelegatingThemeAwareRippleNode;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.RippleKt;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChangeEventProducer$PointerInputData;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.core.os.BundleKt;
import androidx.core.view.MenuProvider;
import coil3.ComponentRegistry;
import coil3.memory.RealStrongMemoryCache;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.ArraysKt;
import okhttp3.Dispatcher;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PopupMenu$1 implements MenuItemHoverListener, MenuPresenter.Callback, MenuBuilder.Callback, AppCompatTextView.SuperCaller, VectorizedFiniteAnimationSpec, HapticFeedback, WindowInfo, RetainedValuesStore {
    public final /* synthetic */ int $r8$classId;
    public Object this$0;

    public PopupMenu$1(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 25:
                this.this$0 = new LongSparseArray((Object) null);
                break;
            case 26:
                this.this$0 = new RealStrongMemoryCache();
                break;
            case 27:
                this.this$0 = new SortedSet(HitTestResultKt.DepthComparator);
                break;
            case 28:
                this.this$0 = Updater.mutableStateOf$default(Boolean.FALSE);
                break;
            case 29:
                ManagedRetainedValuesStore managedRetainedValuesStore = new ManagedRetainedValuesStore();
                this.this$0 = managedRetainedValuesStore;
                if (!managedRetainedValuesStore.isDisposed) {
                    if (managedRetainedValuesStore.isContentComposed) {
                        PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore.purgeUnusedExitedValues();
                    managedRetainedValuesStore.isContentComposed = true;
                    break;
                }
                break;
        }
    }

    public void add(LayoutNode layoutNode) {
        if (!layoutNode.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.add called on an unattached node");
        }
        ((SortedSet) this.this$0).add(layoutNode);
    }

    /* renamed from: calculateVelocity-AH228Gc, reason: not valid java name */
    public long m1calculateVelocityAH228Gc(long j) {
        RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) this.this$0;
        realStrongMemoryCache.getClass();
        if (Velocity.m458getXimpl(j) <= 0.0f || Velocity.m459getYimpl(j) <= 0.0f) {
            InlineClassHelperKt.throwIllegalStateException("maximumVelocity should be a positive value. You specified=" + ((Object) Velocity.m462toStringimpl(j)));
        }
        return BundleKt.Velocity(((VelocityTracker1D) realStrongMemoryCache.weakMemoryCache).calculateVelocity(Velocity.m458getXimpl(j)), ((VelocityTracker1D) realStrongMemoryCache.cache).calculateVelocity(Velocity.m459getYimpl(j)));
    }

    public void current() {
        ((CompositionContext) this.this$0).getClass();
    }

    public FloatAnimationSpec get(int i) {
        switch (this.$r8$classId) {
            case 9:
                return ((FloatSpringSpec[]) this.this$0)[i];
            case 10:
                return (FloatSpringSpec) this.this$0;
            default:
                return (FloatAnimationSpec) this.this$0;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((Dispatcher) this.this$0).getDurationNanos(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((Dispatcher) this.this$0).getEndVelocity(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((Dispatcher) this.this$0).getValueFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((Dispatcher) this.this$0).getVelocityFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    public void inset(float f, float f2, float f3, float f4) {
        ProcessFinisher processFinisher = (ProcessFinisher) this.this$0;
        Canvas canvas = processFinisher.getCanvas();
        float intBitsToFloat = Float.intBitsToFloat((int) (processFinisher.m729getSizeNHjbRc() >> 32)) - (f3 + f);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (processFinisher.m729getSizeNHjbRc() & 4294967295L)) - (f4 + f2);
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        if (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) < 0.0f || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) < 0.0f) {
            androidx.compose.ui.graphics.InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
        }
        processFinisher.m730setSizeuvyYCjk(floatToRawIntBits);
        canvas.translate(f, f2);
    }

    /* renamed from: invoke-0d7_KjU, reason: not valid java name */
    public long m2invoke0d7_KjU() {
        switch (this.$r8$classId) {
            case 18:
                DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = (DelegatingThemeAwareRippleNode) this.this$0;
                long m2invoke0d7_KjU = delegatingThemeAwareRippleNode.color.m2invoke0d7_KjU();
                if (m2invoke0d7_KjU != 16) {
                    return m2invoke0d7_KjU;
                }
                RippleConfiguration rippleConfiguration = (RippleConfiguration) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.LocalRippleConfiguration);
                if (rippleConfiguration != null) {
                    long j = rippleConfiguration.color;
                    if (j != 16) {
                        return j;
                    }
                }
                return ((Color) HitTestResultKt.currentValueOf(delegatingThemeAwareRippleNode, ContentColorKt.LocalContentColor)).value;
            default:
                return ((RippleNodeFactory) this.this$0).color;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        ((Dispatcher) this.this$0).getClass();
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder instanceof SubMenuBuilder) {
            ((SubMenuBuilder) menuBuilder).mParentMenu.getRootMenu().close(false);
        }
        MenuPresenter.Callback callback = ((ActionMenuPresenter) this.this$0).mCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverEnter(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) this.this$0;
        Handler handler = cascadingMenuPopup.mSubMenuHoverHandler;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = cascadingMenuPopup.mShowingMenus;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuBuilder == ((CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i)).menu) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new CascadingMenuPopup$3$1(this, i2 < arrayList.size() ? (CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i2) : null, menuItemImpl, menuBuilder, 0), menuBuilder, SystemClock.uptimeMillis() + 200);
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
        ((CascadingMenuPopup) this.this$0).mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        boolean onMenuItemClick;
        switch (this.$r8$classId) {
            case 0:
                PopupMenu$OnMenuItemClickListener popupMenu$OnMenuItemClickListener = (PopupMenu$OnMenuItemClickListener) ((ComponentRegistry.Builder) this.this$0).lazyFetcherFactories;
                if (popupMenu$OnMenuItemClickListener != null) {
                    VideoPlayerUi videoPlayerUi = (VideoPlayerUi) popupMenu$OnMenuItemClickListener;
                    PlayerBinding playerBinding = videoPlayerUi.binding;
                    Player player = videoPlayerUi.player;
                    int i = MainActivity.$r8$clinit;
                    if (menuItem.getGroupId() == 69) {
                        int itemId = menuItem.getItemId();
                        MediaItemTag mediaItemTag = player.currentMetadata;
                        if (mediaItemTag != null && !mediaItemTag.getMaybeQuality().isEmpty()) {
                            MediaItemTag.Quality quality = (MediaItemTag.Quality) mediaItemTag.getMaybeQuality().get();
                            ArrayList arrayList = quality.sortedVideoStreams;
                            if (quality.selectedVideoStreamIndex != itemId && arrayList.size() > itemId) {
                                String str = ((VideoStream) arrayList.get(itemId)).resolution;
                                player.saveStreamProgressState();
                                player.setRecovery();
                                player.videoResolver.playbackQuality = str;
                                player.reloadPlayQueueManager();
                                playerBinding.qualityTextView.setText(menuItem.getTitle());
                                break;
                            }
                        }
                    } else if (menuItem.getGroupId() == 70) {
                        int itemId2 = menuItem.getItemId();
                        MediaItemTag mediaItemTag2 = player.currentMetadata;
                        if (mediaItemTag2 != null && !mediaItemTag2.getMaybeAudioTrack().isEmpty()) {
                            MediaItemTag.AudioTrack audioTrack = (MediaItemTag.AudioTrack) mediaItemTag2.getMaybeAudioTrack().get();
                            List list = audioTrack.audioStreams;
                            if (audioTrack.selectedAudioStreamIndex != itemId2 && list.size() > itemId2) {
                                String audioTrackId = ((AudioStream) list.get(itemId2)).getAudioTrackId();
                                player.saveStreamProgressState();
                                player.setRecovery();
                                player.videoResolver.audioTrack = audioTrackId;
                                player.audioResolver.settings = audioTrackId;
                                player.reloadPlayQueueManager();
                                playerBinding.audioTrackTextView.setText(menuItem.getTitle());
                                break;
                            }
                        }
                    } else if (menuItem.getGroupId() == 79) {
                        float f = VideoPlayerUi.PLAYBACK_SPEEDS[menuItem.getItemId()];
                        player.setPlaybackParameters(f, player.getPlaybackParameters().pitch, player.getPlaybackSkipSilence());
                        playerBinding.playbackSpeed.setText(PlayerHelper.formatSpeed(f));
                    }
                }
                break;
            default:
                ActionMenuView.OnMenuItemClickListener onMenuItemClickListener = ((ActionMenuView) this.this$0).mOnMenuItemClickListener;
                if (onMenuItemClickListener != null) {
                    Toolbar toolbar = Toolbar.this;
                    Iterator it = ((CopyOnWriteArrayList) toolbar.mMenuHostHelper.config).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            Toolbar.OnMenuItemClickListener onMenuItemClickListener2 = toolbar.mOnMenuItemClickListener;
                            onMenuItemClick = onMenuItemClickListener2 != null ? onMenuItemClickListener2.onMenuItemClick(menuItem) : false;
                        } else if (((MenuProvider) it.next()).onMenuItemSelected(menuItem)) {
                            onMenuItemClick = true;
                        }
                    }
                    if (onMenuItemClick) {
                    }
                }
                break;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                MenuBuilder.Callback callback = ((ActionMenuView) this.this$0).mMenuBuilderCallback;
                if (callback != null) {
                    callback.onMenuModeChange(menuBuilder);
                    break;
                }
                break;
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        ActionMenuPresenter actionMenuPresenter = (ActionMenuPresenter) this.this$0;
        if (menuBuilder == actionMenuPresenter.mMenu) {
            return false;
        }
        actionMenuPresenter.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).mItem.mId;
        MenuPresenter.Callback callback = actionMenuPresenter.mCallback;
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }

    public CardView.AnonymousClass1 produce(CardView.AnonymousClass1 anonymousClass1, AndroidComposeView androidComposeView) {
        long j;
        boolean z;
        long m377screenToLocalMKHz9U;
        LongSparseArray longSparseArray = (LongSparseArray) this.this$0;
        List list = (List) anonymousClass1.mCardBackground;
        LongSparseArray longSparseArray2 = new LongSparseArray(list.size());
        int size = list.size();
        int i = 0;
        while (i < size) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) list.get(i);
            long j2 = pointerInputEventData.id;
            PointerInputChangeEventProducer$PointerInputData pointerInputChangeEventProducer$PointerInputData = (PointerInputChangeEventProducer$PointerInputData) longSparseArray.get(j2);
            if (pointerInputChangeEventProducer$PointerInputData == null) {
                j = pointerInputEventData.uptime;
                m377screenToLocalMKHz9U = pointerInputEventData.position;
                z = false;
            } else {
                long j3 = pointerInputChangeEventProducer$PointerInputData.uptime;
                j = j3;
                z = pointerInputChangeEventProducer$PointerInputData.down;
                m377screenToLocalMKHz9U = androidComposeView.m377screenToLocalMKHz9U(pointerInputChangeEventProducer$PointerInputData.positionOnScreen);
            }
            long j4 = pointerInputEventData.id;
            int i2 = i;
            List list2 = list;
            int i3 = size;
            longSparseArray2.put(j4, new PointerInputChange(j4, pointerInputEventData.uptime, pointerInputEventData.position, pointerInputEventData.down, pointerInputEventData.pressure, j, m377screenToLocalMKHz9U, z, pointerInputEventData.type, pointerInputEventData.historical, pointerInputEventData.scrollDelta, pointerInputEventData.scaleGestureFactor, pointerInputEventData.panGestureOffset, pointerInputEventData.originalEventPosition));
            boolean z2 = pointerInputEventData.down;
            if (z2) {
                longSparseArray.put(j2, new PointerInputChangeEventProducer$PointerInputData(pointerInputEventData.uptime, pointerInputEventData.positionOnScreen, z2));
            } else {
                longSparseArray.remove(j2);
            }
            i = i2 + 1;
            list = list2;
            size = i3;
        }
        return new CardView.AnonymousClass1(14, longSparseArray2, anonymousClass1, false);
    }

    public boolean remove(LayoutNode layoutNode) {
        if (!layoutNode.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.remove called on an unattached node");
        }
        return ((SortedSet) this.this$0).remove(layoutNode);
    }

    /* renamed from: scale-0AR0LA0, reason: not valid java name */
    public void m3scale0AR0LA0(float f, float f2, long j) {
        Canvas canvas = ((ProcessFinisher) this.this$0).getCanvas();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        canvas.translate(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        canvas.scale(f, f2);
        canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 27:
                return ((SortedSet) this.this$0).toString();
            default:
                return super.toString();
        }
    }

    public void translate(float f, float f2) {
        ((ProcessFinisher) this.this$0).getCanvas().translate(f, f2);
    }

    private final void onMenuModeChange$androidx$appcompat$widget$PopupMenu$1(MenuBuilder menuBuilder) {
    }

    public void setFirstBaselineToTopHeight(int i) {
    }

    public void setLastBaselineToBottomHeight(int i) {
    }

    public void setLineHeight(int i, float f) {
    }

    public PopupMenu$1(Density density) {
        this.$r8$classId = 8;
        float f = SplineBasedFloatDecayAnimationSpec_androidKt.platformFlingScrollFriction;
        FlingCalculator flingCalculator = new FlingCalculator();
        flingCalculator.friction = f;
        float density2 = density.getDensity();
        float f2 = FlingCalculatorKt.DecelerationRate;
        flingCalculator.magicPhysicalCoefficient = density2 * 386.0878f * 160.0f * 0.84f;
        this.this$0 = flingCalculator;
    }

    public /* synthetic */ PopupMenu$1(Object obj, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    public PopupMenu$1(long[] jArr) {
        MutableLongList mutableLongList;
        this.$r8$classId = 21;
        if (jArr != null) {
            long[] copyOf = Arrays.copyOf(jArr, jArr.length);
            mutableLongList = new MutableLongList(copyOf.length);
            int i = mutableLongList._size;
            if (i >= 0) {
                if (copyOf.length != 0) {
                    int length = copyOf.length + i;
                    long[] jArr2 = mutableLongList.content;
                    if (jArr2.length < length) {
                        mutableLongList.content = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                    }
                    long[] jArr3 = mutableLongList.content;
                    int i2 = mutableLongList._size;
                    if (i != i2) {
                        ArraysKt.copyInto(jArr3, jArr3, copyOf.length + i, i, i2);
                    }
                    ArraysKt.copyInto(copyOf, jArr3, i, 0, copyOf.length);
                    mutableLongList._size += copyOf.length;
                }
            } else {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("");
                throw null;
            }
        } else {
            mutableLongList = new MutableLongList();
        }
        this.this$0 = mutableLongList;
    }

    public PopupMenu$1(float f, float f2, AnimationVector animationVector) {
        PopupMenu$1 popupMenu$1;
        this.$r8$classId = 12;
        int i = VectorizedAnimationSpecKt.$r8$clinit;
        if (animationVector != null) {
            popupMenu$1 = new PopupMenu$1(animationVector, f, f2);
        } else {
            popupMenu$1 = new PopupMenu$1(f, f2);
        }
        this.this$0 = new Dispatcher(popupMenu$1, 2);
    }

    public PopupMenu$1(AnimationVector animationVector, float f, float f2) {
        this.$r8$classId = 9;
        int size$animation_core = animationVector.getSize$animation_core();
        FloatSpringSpec[] floatSpringSpecArr = new FloatSpringSpec[size$animation_core];
        for (int i = 0; i < size$animation_core; i++) {
            floatSpringSpecArr[i] = new FloatSpringSpec(f, f2, animationVector.get$animation_core(i));
        }
        this.this$0 = floatSpringSpecArr;
    }

    public PopupMenu$1(float f, float f2) {
        this.$r8$classId = 10;
        this.this$0 = new FloatSpringSpec(f, f2, 0.01f);
    }
}
