package com.braze.reactbridge;

import com.braze.enums.CardType;
import com.braze.models.cards.CaptionedImageCard;
import com.braze.models.cards.Card;
import com.braze.models.cards.ImageOnlyCard;
import com.braze.models.cards.ShortNewsCard;
import com.braze.models.cards.TextAnnouncementCard;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.uimanager.UIManagerModuleConstants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContentCardUtil.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\t\u001a\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000b\u001a\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\r\u001a\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000f\u001a\u0006\u0010\u0010\u001a\u00020\u0006¨\u0006\u0011"}, d2 = {"mapContentCards", "Lcom/facebook/react/bridge/WritableArray;", "cardsList", "", "Lcom/braze/models/cards/Card;", "mapContentCard", "Lcom/facebook/react/bridge/WritableMap;", "card", "captionedImageCardToWritableMap", "Lcom/braze/models/cards/CaptionedImageCard;", "shortNewsCardToWritableMap", "Lcom/braze/models/cards/ShortNewsCard;", "textAnnouncementCardToWritableMap", "Lcom/braze/models/cards/TextAnnouncementCard;", "imageOnlyCardToWritableMap", "Lcom/braze/models/cards/ImageOnlyCard;", "controlCardToWritableMap", "braze_react-native-sdk_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ContentCardUtilKt {

    /* compiled from: ContentCardUtil.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CardType.values().length];
            try {
                iArr[CardType.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CardType.CAPTIONED_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CardType.SHORT_NEWS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CardType.TEXT_ANNOUNCEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CardType.CONTROL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CardType.DEFAULT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final WritableArray mapContentCards(List<? extends Card> cardsList) {
        Intrinsics.checkNotNullParameter(cardsList, "cardsList");
        WritableArray createArray = Arguments.createArray();
        for (Card card : (Card[]) cardsList.toArray(new Card[0])) {
            createArray.pushMap(mapContentCard(card));
        }
        Intrinsics.checkNotNull(createArray);
        return createArray;
    }

    public static final WritableMap mapContentCard(Card card) {
        Intrinsics.checkNotNullParameter(card, "card");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("id", card.getId());
        createMap.putDouble("created", card.getCreated());
        createMap.putDouble("expiresAt", card.getExpiresAt());
        createMap.putBoolean("viewed", card.getWasViewedInternal());
        createMap.putBoolean("clicked", card.getIsClicked());
        createMap.putBoolean("pinned", card.getIsPinned());
        createMap.putBoolean(UIManagerModuleConstants.ACTION_DISMISSED, card.getIsDismissedInternal());
        createMap.putBoolean("dismissible", card.getIsDismissibleByUser());
        createMap.putString("url", card.getUrl());
        createMap.putBoolean("openURLInWebView", card.getOpenUriInWebView());
        createMap.putBoolean("isControl", card.isControl());
        WritableMap createMap2 = Arguments.createMap();
        for (Map.Entry<String, String> entry : card.getExtras().entrySet()) {
            createMap2.putString(entry.getKey(), entry.getValue());
        }
        createMap.putMap("extras", createMap2);
        switch (WhenMappings.$EnumSwitchMapping$0[card.getCardType().ordinal()]) {
            case 1:
                createMap.merge(imageOnlyCardToWritableMap((ImageOnlyCard) card));
                break;
            case 2:
                createMap.merge(captionedImageCardToWritableMap((CaptionedImageCard) card));
                break;
            case 3:
                createMap.merge(shortNewsCardToWritableMap((ShortNewsCard) card));
                break;
            case 4:
                createMap.merge(textAnnouncementCardToWritableMap((TextAnnouncementCard) card));
                break;
            case 5:
                createMap.merge(controlCardToWritableMap());
                break;
            case 6:
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }

    public static final WritableMap captionedImageCardToWritableMap(CaptionedImageCard card) {
        Intrinsics.checkNotNullParameter(card, "card");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("image", card.getImageUrl());
        createMap.putDouble("imageAspectRatio", card.getAspectRatio());
        createMap.putString("title", card.getTitle());
        createMap.putString("cardDescription", card.getDescription());
        createMap.putString("domain", card.getDomain());
        createMap.putString("type", "Captioned");
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }

    public static final WritableMap shortNewsCardToWritableMap(ShortNewsCard card) {
        Intrinsics.checkNotNullParameter(card, "card");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("image", card.getImageUrl());
        createMap.putString("title", card.getTitle());
        createMap.putString("cardDescription", card.getDescription());
        createMap.putString("domain", card.getDomain());
        createMap.putString("type", "Classic");
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }

    public static final WritableMap textAnnouncementCardToWritableMap(TextAnnouncementCard card) {
        Intrinsics.checkNotNullParameter(card, "card");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("title", card.getTitle());
        createMap.putString("cardDescription", card.getDescription());
        createMap.putString("domain", card.getDomain());
        createMap.putString("type", "Classic");
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }

    public static final WritableMap imageOnlyCardToWritableMap(ImageOnlyCard card) {
        Intrinsics.checkNotNullParameter(card, "card");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("image", card.getImageUrl());
        createMap.putDouble("imageAspectRatio", card.getAspectRatio());
        createMap.putString("domain", card.getDomain());
        createMap.putString("type", "ImageOnly");
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }

    public static final WritableMap controlCardToWritableMap() {
        WritableMap createMap = Arguments.createMap();
        createMap.putString("type", "Control");
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }
}
