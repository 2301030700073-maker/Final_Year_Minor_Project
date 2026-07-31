package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.enums.CardKey;
import com.braze.events.FeedUpdatedEvent;
import com.braze.models.cards.Card;
import com.braze.support.BrazeLogger;
import com.braze.support.DateTimeUtils;
import com.braze.support.StringUtils;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ConcurrentSkipListSet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class x implements ICardStorageProvider {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.managers.m f236a;
    public final SharedPreferences b;
    public final AbstractSet c;
    public final AbstractSet d;
    public final com.braze.analytics.b e;

    public x(Context context, String str, com.braze.managers.m brazeManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(brazeManager, "brazeManager");
        this.f236a = brazeManager;
        this.e = new com.braze.analytics.b();
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.appboy.storage.feedstorageprovider" + StringUtils.getCacheFileSuffix(context, str == null ? "" : str), 0);
        this.b = sharedPreferences;
        this.c = a(w.d);
        this.d = a(w.c);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("uid", str);
        edit.apply();
    }

    public static final String a(String str) {
        return com.braze.i.a("Updating offline feed for user with id: ", str);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final Object getCachedCardsAsEvent() {
        return a(new JSONArray(this.b.getString("cards", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI)), this.b.getString("uid", ""), true, this.b.getLong("cards_timestamp", -1L));
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsClicked(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsDismissed(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsViewed(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        if (this.c.contains(cardId)) {
            return;
        }
        this.c.add(cardId);
        a(this.c, w.d);
    }

    @Override // com.braze.storage.ICardStorageProvider
    public final void markCardAsVisuallyRead(String cardId) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        if (this.d.contains(cardId)) {
            return;
        }
        this.d.add(cardId);
        a(this.d, w.c);
    }

    public final void a(AbstractSet cardIds, w property) {
        Intrinsics.checkNotNullParameter(cardIds, "cardIds");
        Intrinsics.checkNotNullParameter(property, "property");
        String str = property.f235a;
        SharedPreferences.Editor edit = this.b.edit();
        if (cardIds.isEmpty()) {
            edit.remove(str);
        } else {
            edit.putStringSet(str, cardIds);
        }
        edit.apply();
    }

    public final AbstractSet a(w wVar) {
        String str = wVar.b;
        if (this.b.contains(str)) {
            HashSet hashSet = null;
            String input = this.b.getString(str, null);
            if (input != null) {
                Intrinsics.checkNotNullParameter(input, "input");
                hashSet = new HashSet();
                String[] strArr = (String[]) StringsKt.split$default((CharSequence) input, new String[]{";"}, false, 0, 6, (Object) null).toArray(new String[0]);
                Collections.addAll(hashSet, Arrays.copyOf(strArr, strArr.length));
            }
            SharedPreferences.Editor edit = this.b.edit();
            edit.remove(str);
            edit.apply();
            if (hashSet != null) {
                a(hashSet, wVar);
                return hashSet;
            }
        }
        return new ConcurrentSkipListSet(this.b.getStringSet(wVar.f235a, new HashSet()));
    }

    public final FeedUpdatedEvent a(JSONArray cardsArray, final String str) {
        Intrinsics.checkNotNullParameter(cardsArray, "cardsArray");
        String str2 = str == null ? "" : str;
        final String string = this.b.getString("uid", "");
        if (Intrinsics.areEqual(string, str2)) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.I, (Throwable) null, false, new Function0() { // from class: com.braze.storage.x$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return x.a(str);
                }
            }, 6, (Object) null);
            long nowInSeconds = DateTimeUtils.nowInSeconds();
            SharedPreferences.Editor edit = this.b.edit();
            if (cardsArray.length() == 0) {
                edit.remove("cards");
            } else {
                edit.putString("cards", cardsArray.toString());
            }
            edit.putLong("cards_timestamp", nowInSeconds);
            edit.apply();
            AbstractSet abstractSet = this.c;
            Intrinsics.checkNotNullParameter(cardsArray, "cardsArray");
            HashSet hashSet = new HashSet();
            int length = cardsArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = cardsArray.getJSONObject(i);
                CardKey cardKey = CardKey.ID;
                if (jSONObject.has(cardKey.getFeedKey())) {
                    String string2 = jSONObject.getString(cardKey.getFeedKey());
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    hashSet.add(string2);
                }
            }
            abstractSet.retainAll(hashSet);
            a(this.c, w.d);
            AbstractSet abstractSet2 = this.d;
            Intrinsics.checkNotNullParameter(cardsArray, "cardsArray");
            HashSet hashSet2 = new HashSet();
            int length2 = cardsArray.length();
            for (int i2 = 0; i2 < length2; i2++) {
                JSONObject jSONObject2 = cardsArray.getJSONObject(i2);
                CardKey cardKey2 = CardKey.ID;
                if (jSONObject2.has(cardKey2.getFeedKey())) {
                    String string3 = jSONObject2.getString(cardKey2.getFeedKey());
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    hashSet2.add(string3);
                }
            }
            abstractSet2.retainAll(hashSet2);
            a(this.d, w.c);
            return a(cardsArray, str, false, nowInSeconds);
        }
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.storage.x$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return x.a(str, string);
            }
        }, 7, (Object) null);
        return null;
    }

    public static final String a(String str, String str2) {
        return "The received cards are for user " + str + " and the current user is " + str2 + ", the cards will be discarded and no changes will be made.";
    }

    public final FeedUpdatedEvent a(JSONArray jSONArray, String str, boolean z, long j) {
        List a2;
        if (jSONArray.length() == 0) {
            a2 = new ArrayList();
        } else {
            a2 = com.braze.models.g.a(jSONArray, new CardKey.Provider(false), this.f236a, this, this.e);
        }
        List<Card> list = a2;
        for (Card card : list) {
            if (this.c.contains(card.getId())) {
                card.setViewed(true);
                card.setIndicatorHighlighted(true);
            }
            if (this.d.contains(card.getId())) {
                card.setIndicatorHighlighted(true);
            }
        }
        return new FeedUpdatedEvent(list, str, z, j);
    }
}
