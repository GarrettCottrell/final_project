require 'rails_helper'

describe 'Background' do 
  it 'has attributes' do

data = {
    "total": 2354,
    "total_pages": 2354,
    "results": [
        {
            "id": "hdzGZRCYMSU",
            "created_at": "2020-09-13T19:54:14-04:00",
            "updated_at": "2021-01-20T01:16:37-05:00",
            "promoted_at": nil,
            "width": 3888,
            "height": 5184,
            "color": "#d9f3f3",
            "blur_hash": "LsG,S1WCtRkC02axWBays:adV@js",
            "description": nil,
            "alt_description": "man in blue jacket and black pants riding on snowboard during daytime",
            "urls": {
                "raw": "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1",
                "full": "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=srgb&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=85",
                "regular": "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080",
                "small": "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=400",
                "thumb": "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=200"
            },
            "links": {
                "self": "https://api.unsplash.com/photos/hdzGZRCYMSU",
                "html": "https://unsplash.com/photos/hdzGZRCYMSU",
                "download": "https://unsplash.com/photos/hdzGZRCYMSU/download",
                "download_location": "https://api.unsplash.com/photos/hdzGZRCYMSU/download"
            },
            "categories": [],
            "likes": 1,
            "liked_by_user": false,
            "current_user_collections": [],
            "sponsorship": nil,
            "user": {
                "id": "uMT_KSln-6U",
                "updated_at": "2021-01-19T23:22:03-05:00",
                "username": "mikekilcoyne",
                "name": "Michael Kilcoyne",
                "first_name": "Michael",
                "last_name": "Kilcoyne",
                "twitter_username": "mikekilcoyne",
                "portfolio_url": "http://mikekilcoyne.com",
                "bio": "I love capturing people, animal, places, and things in their element. ",
                "location": "Istanbul, Turkey",
                "links": {
                    "self": "https://api.unsplash.com/users/mikekilcoyne",
                    "html": "https://unsplash.com/@mikekilcoyne",
                    "photos": "https://api.unsplash.com/users/mikekilcoyne/photos",
                    "likes": "https://api.unsplash.com/users/mikekilcoyne/likes",
                    "portfolio": "https://api.unsplash.com/users/mikekilcoyne/portfolio",
                    "following": "https://api.unsplash.com/users/mikekilcoyne/following",
                    "followers": "https://api.unsplash.com/users/mikekilcoyne/followers"
                },
                "profile_image": {
                    "small": "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                    "medium": "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                    "large": "https://images.unsplash.com/profile-1598778372638-601d72333823image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
                },
                "instagram_username": "itsmemikekilcoyne",
                "total_collections": 1,
                "total_likes": 3,
                "total_photos": 78,
                "accepted_tos": true
            },
            "tags": [
                {
                    "type": "search",
                    "title": "human"
                },
                {
                    "type": "landing_page",
                    "title": "person",
                    "source": {
                        "ancestry": {
                            "type": {
                                "slug": "images",
                                "pretty_slug": "Images"
                            },
                            "category": {
                                "slug": "people",
                                "pretty_slug": "People"
                            }
                        },
                        "title": "People Images & Pictures",
                        "subtitle": "Download free people images",
                        "description": "Human faces speak to us in a way that language cannot. Everyone recognize a smile, a frown, tears. Unsplash has the finest selection of people images on the web: high-def and curated for quality. Family, friends, men, women, Unsplash has photos for all.",
                        "meta_title": "People Pictures [HQ] | Download Free Images on Unsplash",
                        "meta_description": "Choose from hundreds of free people pictures. Download HD people photos for free on Unsplash.",
                        "cover_photo": {
                            "id": "PmNjS6b3XP4",
                            "created_at": "2017-04-20T18:04:07-04:00",
                            "updated_at": "2020-12-22T02:01:25-05:00",
                            "promoted_at": "2017-04-21T12:00:49-04:00",
                            "width": 4630,
                            "height": 3087,
                            "color": "#a6d9d9",
                            "blur_hash": "LjI=x%:QUbv#NHWVa}kCt7jFjZfQ",
                            "description": "Summer in France with baby",
                            "alt_description": "woman carrying baby while walking",
                            "urls": {
                                "raw": "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1",
                                "full": "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb",
                                "regular": "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
                                "small": "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max",
                                "thumb": "https://images.unsplash.com/photo-1492725764893-90b379c2b6e7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
                            },
                            "links": {
                                "self": "https://api.unsplash.com/photos/PmNjS6b3XP4",
                                "html": "https://unsplash.com/photos/PmNjS6b3XP4",
                                "download": "https://unsplash.com/photos/PmNjS6b3XP4/download",
                                "download_location": "https://api.unsplash.com/photos/PmNjS6b3XP4/download"
                            },
                            "categories": [],
                            "likes": 1921,
                            "liked_by_user": false,
                            "current_user_collections": [],
                            "sponsorship": nil,
                            "user": {
                                "id": "7S_pCRiCiQo",
                                "updated_at": "2020-12-22T18:27:17-05:00",
                                "username": "thedakotacorbin",
                                "name": "Dakota Corbin",
                                "first_name": "Dakota",
                                "last_name": "Corbin",
                                "twitter_username": "thedakotacorbin",
                                "portfolio_url": "http://www.dakotacorbin.com",
                                "bio": "Husband | Father | Creator",
                                "location": "Utah, United States",
                                "links": {
                                    "self": "https://api.unsplash.com/users/thedakotacorbin",
                                    "html": "https://unsplash.com/@thedakotacorbin",
                                    "photos": "https://api.unsplash.com/users/thedakotacorbin/photos",
                                    "likes": "https://api.unsplash.com/users/thedakotacorbin/likes",
                                    "portfolio": "https://api.unsplash.com/users/thedakotacorbin/portfolio",
                                    "following": "https://api.unsplash.com/users/thedakotacorbin/following",
                                    "followers": "https://api.unsplash.com/users/thedakotacorbin/followers"
                                },
                                "profile_image": {
                                    "small": "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                                    "medium": "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                                    "large": "https://images.unsplash.com/profile-1593623494202-55ffc4dc725cimage?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
                                },
                                "instagram_username": "thedakotacorbin",
                                "total_collections": 0,
                                "total_likes": 1,
                                "total_photos": 44,
                                "accepted_tos": true
                            }
                        }
                    }
                },
                {
                    "type": "landing_page",
                    "title": "nature",
                    "source": {
                        "ancestry": {
                            "type": {
                                "slug": "images",
                                "pretty_slug": "Images"
                            },
                            "category": {
                                "slug": "nature",
                                "pretty_slug": "Nature"
                            }
                        },
                        "title": "Nature Images",
                        "subtitle": "Download free nature images",
                        "description": "Nature produces the most astoundingly beautiful images: the swirling lava of a volcano, palm trees against a blue sky, snow-capped mountains towering above. Unsplash has magnificent , high-quality photos of all the delights that nature has to offer.",
                        "meta_title": "100+ Nature Pictures | Download Free Images & Stock Photos on Unsplash",
                        "meta_description": "Choose from hundreds of free nature pictures. Download HD nature photos for free on Unsplash.",
                        "cover_photo": {
                            "id": "VE5FRc7uiC4",
                            "created_at": "2018-10-15T04:58:20-04:00",
                            "updated_at": "2020-12-22T11:05:21-05:00",
                            "promoted_at": "2018-10-15T08:23:00-04:00",
                            "width": 4640,
                            "height": 3480,
                            "color": "#262640",
                            "blur_hash": "L21o;CogI7WARNaxt9j]Mvaxxwof",
                            "description": "lost in the sky",
                            "alt_description": "star in space",
                            "urls": {
                                "raw": "https://images.unsplash.com/photo-1539593395743-7da5ee10ff07?ixlib=rb-1.2.1",
                                "full": "https://images.unsplash.com/photo-1539593395743-7da5ee10ff07?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb",
                                "regular": "https://images.unsplash.com/photo-1539593395743-7da5ee10ff07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
                                "small": "https://images.unsplash.com/photo-1539593395743-7da5ee10ff07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max",
                                "thumb": "https://images.unsplash.com/photo-1539593395743-7da5ee10ff07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
                            },
                            "links": {
                                "self": "https://api.unsplash.com/photos/VE5FRc7uiC4",
                                "html": "https://unsplash.com/photos/VE5FRc7uiC4",
                                "download": "https://unsplash.com/photos/VE5FRc7uiC4/download",
                                "download_location": "https://api.unsplash.com/photos/VE5FRc7uiC4/download"
                            },
                            "categories": [],
                            "likes": 106,
                            "liked_by_user": false,
                            "current_user_collections": [],
                            "sponsorship": nil,
                            "user": {
                                "id": "PvaYY7qgvqU",
                                "updated_at": "2020-12-22T09:56:04-05:00",
                                "username": "akin",
                                "name": "Akin Cakiner",
                                "first_name": "Akin",
                                "last_name": "Cakiner",
                                "twitter_username": "pausyworld",
                                "portfolio_url": "https://akincakiner.com/",
                                "bio": "Create The Moment",
                                "location": "almelo",
                                "links": {
                                    "self": "https://api.unsplash.com/users/akin",
                                    "html": "https://unsplash.com/@akin",
                                    "photos": "https://api.unsplash.com/users/akin/photos",
                                    "likes": "https://api.unsplash.com/users/akin/likes",
                                    "portfolio": "https://api.unsplash.com/users/akin/portfolio",
                                    "following": "https://api.unsplash.com/users/akin/following",
                                    "followers": "https://api.unsplash.com/users/akin/followers"
                                },
                                "profile_image": {
                                    "small": "https://images.unsplash.com/profile-1578436703762-5a9ab2f10de8image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                                    "medium": "https://images.unsplash.com/profile-1578436703762-5a9ab2f10de8image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                                    "large": "https://images.unsplash.com/profile-1578436703762-5a9ab2f10de8image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"
                                },
                                "instagram_username": "akincakiner",
                                "total_collections": 0,
                                "total_likes": 56,
                                "total_photos": 261,
                                "accepted_tos": true
                            }
                        }
                    }
                }
            ]
        }
    ]
}

location = 'Denver,CO'

background = Background.new(data, location)

expect(background.credit).to eq('Photo by Michael Kilcoyne / Unsplash')
expect(background.image_url).to eq('https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080')
expect(background.location).to eq('Denver,CO')
  end
end