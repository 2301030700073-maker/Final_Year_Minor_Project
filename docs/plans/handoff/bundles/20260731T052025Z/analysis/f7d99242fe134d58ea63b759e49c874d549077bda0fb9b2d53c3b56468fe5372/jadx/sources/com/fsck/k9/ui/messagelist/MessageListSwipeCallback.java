package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.navigation.internal.NavContext;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.work.Data;
import androidx.work.OperationKt;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.item.ComposableMessageViewHolder;
import com.fsck.k9.ui.messagelist.item.MessageViewHolder;
import com.google.android.material.color.ColorRoles;
import com.google.android.material.textview.MaterialTextView;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.StateFlow;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.feature.account.AccountId;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListSwipeCallback extends ItemTouchHelper.Callback {
    public MessageListItem activeSwipingMessageListItem;
    public final MessageListAdapter adapter;
    public final Paint backgroundColorPaint;
    public final LegacyMessageListFragment$swipeListener$1 listener;
    public int maxSwipeLeftDistance;
    public int maxSwipeRightDistance;
    public final NavContext resourceProvider;
    public final LegacyMessageListFragment$$ExternalSyntheticLambda7 swipeActionSupportProvider;
    public final StateFlow swipeActions;
    public final LinkedHashMap swipeLeftConfig;
    public final ImageView swipeLeftIcon;
    public final View swipeLeftLayout;
    public final MaterialTextView swipeLeftText;
    public final int swipePadding;
    public final LinkedHashMap swipeRightConfig;
    public final ImageView swipeRightIcon;
    public final View swipeRightLayout;
    public final MaterialTextView swipeRightText;
    public final float swipeThreshold;

    public MessageListSwipeCallback(Context context, LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, NavContext navContext, LegacyMessageListFragment$$ExternalSyntheticLambda7 legacyMessageListFragment$$ExternalSyntheticLambda7, StateFlow stateFlow, MessageListAdapter messageListAdapter, LegacyMessageListFragment$swipeListener$1 legacyMessageListFragment$swipeListener$1, List list) {
        legacyMessageListFragment$$ExternalSyntheticLambda7.getClass();
        stateFlow.getClass();
        messageListAdapter.getClass();
        legacyMessageListFragment$swipeListener$1.getClass();
        list.getClass();
        this.mCachedMaxScrollSpeed = -1;
        this.resourceProvider = navContext;
        this.swipeActionSupportProvider = legacyMessageListFragment$$ExternalSyntheticLambda7;
        this.swipeActions = stateFlow;
        this.adapter = messageListAdapter;
        this.listener = legacyMessageListFragment$swipeListener$1;
        this.swipePadding = (int) context.getResources().getDimension(R.dimen.messageListSwipeIconPadding);
        this.swipeThreshold = context.getResources().getDimension(R.dimen.messageListSwipeThreshold);
        this.backgroundColorPaint = new Paint();
        this.swipeRightConfig = new LinkedHashMap();
        this.swipeLeftConfig = new LinkedHashMap();
        this.maxSwipeRightDistance = -1;
        this.maxSwipeLeftDistance = -1;
        LayoutInflater from = LayoutInflater.from(context);
        View inflate = from.inflate(R.layout.swipe_right_action, (ViewGroup) null, false);
        inflate.getClass();
        this.swipeRightLayout = inflate;
        View inflate2 = from.inflate(R.layout.swipe_left_action, (ViewGroup) null, false);
        inflate2.getClass();
        this.swipeLeftLayout = inflate2;
        View findViewById = inflate.findViewById(R.id.swipe_action_icon);
        findViewById.getClass();
        this.swipeRightIcon = (ImageView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.swipe_action_text);
        findViewById2.getClass();
        this.swipeRightText = (MaterialTextView) findViewById2;
        View findViewById3 = inflate2.findViewById(R.id.swipe_action_icon);
        findViewById3.getClass();
        this.swipeLeftIcon = (ImageView) findViewById3;
        View findViewById4 = inflate2.findViewById(R.id.swipe_action_text);
        findViewById4.getClass();
        this.swipeLeftText = (MaterialTextView) findViewById4;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(stateFlow, new ImageLoadKt$ImageLoad$2$1$1(this, list, null, 6), 2), lifecycleCoroutineScopeImpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v20, types: [java.lang.Number] */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    public static final LinkedHashMap access$setupSwipeActionConfig(MessageListSwipeCallback messageListSwipeCallback, Map map, List list, NavContext navContext, boolean z) {
        LinkedHashMap linkedHashMap;
        int i;
        ?? r9;
        int i2;
        String string;
        ColorRoles colorRoles;
        ?? r7;
        ?? r8;
        ?? r10;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            linkedHashMap = null;
            r3 = null;
            r3 = null;
            Pair pair = null;
            if (!it.hasNext()) {
                break;
            }
            LegacyAccount legacyAccount = (LegacyAccount) it.next();
            SwipeActions swipeActions = (SwipeActions) map.get(legacyAccount.id);
            if (swipeActions != null) {
                SwipeAction swipeAction = swipeActions.leftAction;
                SwipeAction swipeAction2 = swipeActions.rightAction;
                if (!z) {
                    swipeAction = swipeAction2;
                }
                if (swipeAction != null) {
                    if (swipeAction == SwipeAction.None) {
                        swipeAction = null;
                    }
                    if (swipeAction != null) {
                        pair = new Pair(legacyAccount.id, swipeAction);
                    }
                }
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Pair pair2 = (Pair) it2.next();
            AccountId accountId = (AccountId) pair2.first;
            SwipeAction swipeAction3 = (SwipeAction) pair2.second;
            Context context = navContext.context;
            swipeAction3.getClass();
            switch (swipeAction3.ordinal()) {
                case 0:
                    LinkedHashMap linkedHashMap3 = linkedHashMap;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action == SwipeAction.None");
                    return linkedHashMap3;
                case 1:
                    i = R.attr.messageListSwipeSelectColor;
                    break;
                case 2:
                    i = R.attr.messageListSwipeToggleReadColor;
                    break;
                case 3:
                    i = R.attr.messageListSwipeToggleStarColor;
                    break;
                case 4:
                    i = R.attr.messageListSwipeArchiveColor;
                    break;
                case 5:
                case 6:
                    i = R.attr.colorSurfaceContainerLowest;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    i = R.attr.messageListSwipeDeleteColor;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    i = R.attr.messageListSwipeSpamColor;
                    break;
                case 9:
                    i = R.attr.messageListSwipeMoveColor;
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return linkedHashMap;
            }
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
                LinkedHashMap linkedHashMap4 = linkedHashMap;
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) context.getResources().getResourceName(i), "Couldn't resolve attribute (");
                return linkedHashMap4;
            }
            int i3 = typedValue.data;
            TypedValue resolveTypedValueOrThrow = OperationKt.resolveTypedValueOrThrow(context, R.attr.colorPrimary, Data.Companion.class.getCanonicalName());
            int i4 = resolveTypedValueOrThrow.resourceId;
            ColorRoles colorRoles2 = Data.Companion.getColorRoles(context, Data.Companion.harmonize(i3, i4 != 0 ? context.getColor(i4) : resolveTypedValueOrThrow.data));
            switch (swipeAction3.ordinal()) {
                case 0:
                    LinkedHashMap linkedHashMap5 = linkedHashMap;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action == SwipeAction.None");
                    return linkedHashMap5;
                case 1:
                    r9 = Integer.valueOf(R.drawable.ic_check_circle);
                    break;
                case 2:
                    r9 = Integer.valueOf(R.drawable.ic_mark_email_read);
                    break;
                case 3:
                    r9 = Integer.valueOf(R.drawable.ic_star_filled);
                    break;
                case 4:
                case 6:
                    r9 = Integer.valueOf(R.drawable.ic_archive);
                    break;
                case 5:
                    r9 = linkedHashMap;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    r9 = Integer.valueOf(R.drawable.ic_delete);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    r9 = Integer.valueOf(R.drawable.ic_report);
                    break;
                case 9:
                    r9 = Integer.valueOf(R.drawable.ic_drive_file_move);
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return linkedHashMap;
            }
            Object access$loadDrawable = r9 != null ? MessageListLoaderKt.access$loadDrawable(context, r9.intValue()) : linkedHashMap;
            int ordinal = swipeAction3.ordinal();
            if (ordinal == 0) {
                LinkedHashMap linkedHashMap6 = linkedHashMap;
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action == SwipeAction.None");
                return linkedHashMap6;
            }
            Object access$loadDrawable2 = ordinal != 2 ? ordinal != 3 ? linkedHashMap : MessageListLoaderKt.access$loadDrawable(context, R.drawable.ic_star) : MessageListLoaderKt.access$loadDrawable(context, R.drawable.ic_mark_email_unread);
            switch (swipeAction3.ordinal()) {
                case 0:
                    LinkedHashMap linkedHashMap7 = linkedHashMap;
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action == SwipeAction.None");
                    return linkedHashMap7;
                case 1:
                    i2 = R.string.swipe_action_select;
                    break;
                case 2:
                    i2 = R.string.swipe_action_mark_as_read;
                    break;
                case 3:
                    i2 = R.string.swipe_action_add_star;
                    break;
                case 4:
                    i2 = R.string.swipe_action_archive;
                    break;
                case 5:
                    i2 = R.string.swipe_action_change_swipe_gestures;
                    break;
                case 6:
                    i2 = R.string.swipe_action_archive_folder_not_set;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    i2 = R.string.swipe_action_delete;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    i2 = R.string.swipe_action_spam;
                    break;
                case 9:
                    i2 = R.string.swipe_action_move;
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return linkedHashMap;
            }
            LinkedHashMap linkedHashMap8 = linkedHashMap;
            String string2 = context.getResources().getString(i2);
            string2.getClass();
            int ordinal2 = swipeAction3.ordinal();
            if (ordinal2 == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action == SwipeAction.None");
                return linkedHashMap8;
            }
            if (ordinal2 == 1) {
                string = context.getResources().getString(R.string.swipe_action_deselect);
                string.getClass();
            } else if (ordinal2 == 2) {
                string = context.getResources().getString(R.string.swipe_action_mark_as_unread);
                string.getClass();
            } else if (ordinal2 != 3) {
                colorRoles = colorRoles2;
                r7 = access$loadDrawable;
                r8 = access$loadDrawable2;
                r10 = linkedHashMap8;
                linkedHashMap2.put(accountId, new SwipeActionConfig(colorRoles, r7, r8, string2, r10));
                linkedHashMap = linkedHashMap8;
            } else {
                string = context.getResources().getString(R.string.swipe_action_remove_star);
                string.getClass();
            }
            colorRoles = colorRoles2;
            r7 = access$loadDrawable;
            r8 = access$loadDrawable2;
            r10 = string;
            linkedHashMap2.put(accountId, new SwipeActionConfig(colorRoles, r7, r8, string2, r10));
            linkedHashMap = linkedHashMap8;
        }
        return linkedHashMap2;
    }

    public final void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        recyclerView.getClass();
        viewHolder.getClass();
        View view = viewHolder.itemView;
        Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
        if (tag instanceof Float) {
            float floatValue = ((Float) tag).floatValue();
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            view.setElevation(floatValue);
        }
        view.setTag(R.id.item_touch_helper_previous_elevation, null);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setTag(R.id.message_list_swipe_tag, null);
    }

    public final void drawLayout(Canvas canvas, float f, int i, int i2, MessageListItem messageListItem) {
        Drawable drawable;
        String str;
        boolean z = messageListItem.isRead;
        boolean z2 = messageListItem.isStarred;
        boolean z3 = f > 0.0f;
        boolean z4 = Math.abs(f) > this.swipeThreshold;
        AccountId accountId = messageListItem.account.id;
        LinkedHashMap linkedHashMap = this.swipeLeftConfig;
        LinkedHashMap linkedHashMap2 = this.swipeRightConfig;
        SwipeActionConfig swipeActionConfig = (SwipeActionConfig) (z3 ? linkedHashMap2.get(accountId) : linkedHashMap.get(accountId));
        if (swipeActionConfig == null) {
            throw new IllegalStateException(("drawLayout() called despite swipeActionConfig == null. \nswipeActions = " + this.swipeActions.getValue() + ", \nswipeRightConfig = " + linkedHashMap2 + ", \nswipeLeftConfig = " + linkedHashMap).toString());
        }
        int i3 = swipeActionConfig.foregroundColor;
        int i4 = swipeActionConfig.backgroundColor;
        SwipeActions swipeActions = getSwipeActions(messageListItem);
        SwipeAction swipeAction = swipeActions.leftAction;
        SwipeAction swipeAction2 = swipeActions.rightAction;
        View view = z3 ? this.swipeRightLayout : this.swipeLeftLayout;
        if (z3) {
            swipeAction = swipeAction2;
        }
        ImageView imageView = z3 ? this.swipeRightIcon : this.swipeLeftIcon;
        MaterialTextView materialTextView = z3 ? this.swipeRightText : this.swipeLeftText;
        int i5 = z4 ? i4 : i3;
        if (!z4) {
            i3 = i4;
        }
        view.setBackgroundColor(i3);
        int ordinal = swipeAction.ordinal();
        if (ordinal != 2 ? ordinal != 3 ? false : z2 : z) {
            drawable = swipeActionConfig.iconToggled;
            if (drawable == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action has no toggled icon");
                return;
            }
        } else {
            drawable = swipeActionConfig.icon;
        }
        if (drawable != null) {
            drawable.setTint(i5);
        }
        imageView.setImageDrawable(drawable);
        imageView.setVisibility(drawable != null ? 0 : 8);
        boolean isSelected = this.adapter.isSelected(messageListItem);
        int ordinal2 = swipeAction.ordinal();
        if (ordinal2 != 2) {
            z = ordinal2 != 3 ? false : z2;
        }
        if (z || isSelected) {
            str = swipeActionConfig.actionNameToggled;
            if (str == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("action has no toggled name");
                return;
            }
        } else {
            str = swipeActionConfig.actionName;
        }
        materialTextView.setText(str);
        materialTextView.setTextColor(i5);
        if (view.isDirty()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            view.layout(0, 0, i, i2);
            int i6 = this.swipePadding;
            if (z3) {
                this.maxSwipeRightDistance = materialTextView.getRight() + i6;
            } else {
                this.maxSwipeLeftDistance = (view.getWidth() - materialTextView.getLeft()) + i6;
            }
        }
        view.draw(canvas);
    }

    public final long getAnimationDuration(RecyclerView recyclerView, int i, float f) {
        recyclerView.getClass();
        return (long) ((recyclerView.getItemAnimator() == null ? i == 8 ? 200L : 250L : i == 8 ? r1.mMoveDuration : r1.mRemoveDuration) * (Math.abs(f) / recyclerView.getWidth()));
    }

    public final int getMaxSwipeDistance(RecyclerView recyclerView, int i) {
        recyclerView.getClass();
        if (i == 4) {
            int i2 = this.maxSwipeLeftDistance;
            return i2 > 0 ? i2 : recyclerView.getWidth();
        }
        if (i != 8) {
            return recyclerView.getWidth();
        }
        int i3 = this.maxSwipeRightDistance;
        return i3 > 0 ? i3 : recyclerView.getWidth();
    }

    public final MessageListItem getMessageListItem(RecyclerView.ViewHolder viewHolder) {
        boolean z = viewHolder instanceof MessageViewHolder;
        MessageListAdapter messageListAdapter = this.adapter;
        if (z) {
            return messageListAdapter.getItemById(((MessageViewHolder) viewHolder).uniqueId);
        }
        if (viewHolder instanceof ComposableMessageViewHolder) {
            return messageListAdapter.getItemById(((ComposableMessageViewHolder) viewHolder).uniqueId);
        }
        return null;
    }

    public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        recyclerView.getClass();
        viewHolder.getClass();
        MessageListItem messageListItem = getMessageListItem(viewHolder);
        if (messageListItem == null) {
            return 0;
        }
        SwipeActions swipeActions = getSwipeActions(messageListItem);
        SwipeAction swipeAction = swipeActions.leftAction;
        SwipeAction swipeAction2 = swipeActions.rightAction;
        LegacyMessageListFragment$$ExternalSyntheticLambda7 legacyMessageListFragment$$ExternalSyntheticLambda7 = this.swipeActionSupportProvider;
        int i = legacyMessageListFragment$$ExternalSyntheticLambda7.isActionSupported(messageListItem, swipeAction2) ? 8 : 0;
        if (legacyMessageListFragment$$ExternalSyntheticLambda7.isActionSupported(messageListItem, swipeAction)) {
            i |= 4;
        }
        return (i << 8) | i;
    }

    public final SwipeActions getSwipeActions(MessageListItem messageListItem) {
        StateFlow stateFlow = this.swipeActions;
        Map map = (Map) stateFlow.getValue();
        LegacyAccount legacyAccount = messageListItem.account;
        Object obj = map.get(legacyAccount.id);
        if (obj != null) {
            return (SwipeActions) obj;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Could not find swipe actions for account ", legacyAccount.uuid, ". swipeActions = ", stateFlow);
        return null;
    }

    public final void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, boolean z, boolean z2) {
        canvas.getClass();
        viewHolder.getClass();
        View view = viewHolder.itemView;
        view.getClass();
        int width = view.getWidth();
        int height = view.getHeight();
        float f3 = 0.0f;
        if (f != 0.0f) {
            float left = view.getLeft();
            float top = view.getTop();
            int save = canvas.save();
            canvas.translate(left, top);
            try {
                MessageListItem messageListItem = getMessageListItem(viewHolder);
                if (messageListItem != null) {
                    if (z || !z2) {
                        drawLayout(canvas, f, width, height, messageListItem);
                    } else {
                        LegacyAccount legacyAccount = messageListItem.account;
                        Paint paint = this.backgroundColorPaint;
                        LinkedHashMap linkedHashMap = f > 0.0f ? this.swipeRightConfig : this.swipeLeftConfig;
                        if (linkedHashMap.get(legacyAccount.id) != null) {
                            paint.setColor(((SwipeActionConfig) MapsKt__MapsKt.getValue(linkedHashMap, legacyAccount.id)).backgroundColor);
                            canvas.drawRect(0.0f, 0.0f, width, height, paint);
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("drawBackground() called despite swipeActionConfig[item.accountWrapper] == null");
                        }
                    }
                }
            } finally {
                canvas.restoreToCount(save);
            }
        }
        if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            Float valueOf = Float.valueOf(view.getElevation());
            int childCount = recyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (childAt != view) {
                    WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                    float elevation = childAt.getElevation();
                    if (elevation > f3) {
                        f3 = elevation;
                    }
                }
            }
            view.setElevation(f3 + 1.0f);
            view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
        }
        view.setTranslationX(f);
        view.setTranslationY(f2);
    }

    public final void onSwipeEnded(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        MessageListItem messageListItem = getMessageListItem(viewHolder);
        if (messageListItem == null) {
            return;
        }
        LegacyMessageListFragment$swipeListener$1 legacyMessageListFragment$swipeListener$1 = this.listener;
        legacyMessageListFragment$swipeListener$1.getClass();
        LegacyMessageListFragment legacyMessageListFragment = legacyMessageListFragment$swipeListener$1.this$0;
        SwipeRefreshLayout swipeRefreshLayout = legacyMessageListFragment.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(true);
        }
        if (legacyMessageListFragment.itemSelectedOnSwipeStart && !LegacyMessageListFragment.access$isMessageSelected(legacyMessageListFragment, messageListItem)) {
            MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
            if (messageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            messageListAdapter.setSelected(Validate.plus(messageListAdapter.selected, Long.valueOf(messageListItem.uniqueId)));
            legacyMessageListFragment.updateAfterSelectionChange();
        }
        this.activeSwipingMessageListItem = null;
    }

    public final boolean shouldAnimateOut(int i) {
        SwipeActions swipeActions;
        SwipeAction swipeAction;
        MessageListItem messageListItem = this.activeSwipingMessageListItem;
        if (messageListItem == null || (swipeActions = (SwipeActions) ((Map) this.swipeActions.getValue()).get(messageListItem.account.id)) == null) {
            return false;
        }
        if (i == 4) {
            swipeAction = swipeActions.leftAction;
        } else {
            if (i != 8) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unsupported direction");
                return false;
            }
            swipeAction = swipeActions.rightAction;
        }
        return swipeAction.removesItem;
    }
}
