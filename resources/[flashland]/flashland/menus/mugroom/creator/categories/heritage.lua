---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 02/09/2019 15:01
---

local HeritageMom = { "Adelyn", "Emily", "Abigail", "Beverly", "Kristen", "Hailey", "June", "Daisy", "Elizabeth", "Addison", "Ava", "Cameron", "Samantha", "Madison", "Amber", "Heather", "Hillary", "Courtney", "Ashley", "Alyssa", "Mia", "Brittany" }
local HeritageDad = { "Benjamin", "Daniel", "Joshua", "Noah", "Andrew", "Juan", "Alex", "Isaac", "Evan", "Ethan", "Vincent", "Angel", "Diego", "Adrian", "Gabriel", "Michael", "Santiago", "Kevin", "Louis", "Samuel", "Anthony", "Pierre", "Niko" }

function CreatorMenuHeritage(indexCharacter, createPlayer)
    RageUI.DrawContent({ header = true, instructionalButton = true }, function()
        RageUI.HeritageWindow(indexCharacter[createPlayer.Model].Face.face.mom, indexCharacter[createPlayer.Model].Face.face.dad)
        RageUI.List(GetLabelText("FACE_MUMS"), HeritageMom, indexCharacter[createPlayer.Model].Face.face.mom, GetLabelText("CHARC_H_30"), {}, true, function(Hovered, Active, Selected, Index)
            if createPlayer[createPlayer.Model].Face.face.mom ~= Index then
                createPlayer[createPlayer.Model].Face.face.mom = Index - 1
                indexCharacter[createPlayer.Model].Face.face.mom = Index
            end
        end)
        RageUI.List(GetLabelText("FACE_DADS"), HeritageDad, indexCharacter[createPlayer.Model].Face.face.dad, GetLabelText("CHARC_H_31"), {}, true, function(Hovered, Active, Selected, Index)
            if createPlayer[createPlayer.Model].Face.face.dad ~= Index then
                createPlayer[createPlayer.Model].Face.face.dad = Index - 1
                indexCharacter[createPlayer.Model].Face.face.dad = Index
            end
        end)
        RageUI.UISliderHeritage(GetLabelText("FACE_H_DOM"), math.round(indexCharacter[createPlayer.Model].Face.resemblance, 2) * 10, GetLabelText("CHARC_H_9"), function(Hovered, Selected, Active, Heritage, Index)
            if createPlayer[createPlayer.Model].Face.resemblance ~= Heritage then
                createPlayer[createPlayer.Model].Face.resemblance = Heritage
                indexCharacter[createPlayer.Model].Face.resemblance = Heritage
            end
        end)
        RageUI.UISliderHeritage(GetLabelText("FACE_H_STON"), math.round(indexCharacter[createPlayer.Model].Face.skinMix, 2) * 10, GetLabelText("FACE_HER_ST_H"), function(Hovered, Selected, Active, Heritage, Index)
            if createPlayer[createPlayer.Model].Face.skinMix ~= Heritage then
                createPlayer[createPlayer.Model].Face.skinMix = Heritage
                indexCharacter[createPlayer.Model].Face.skinMix = Heritage
            end
        end)
        UpdateEntityFace(GetPlayerPed(-1), createPlayer[createPlayer.Model].Face)
    end, function()
        ---Panels
    end)
end